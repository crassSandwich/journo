// place for general functions and js-ink interface

// note: may not be totally accurate; see https://github.com/inkle/ink/blob/master/Documentation/RunningYourInk.md#external-functions
EXTERNAL get_elapsed_seconds()
// fallback
== function get_elapsed_seconds
~ return 0

== function alter (ref x, k)
~ x = x + k

// words per minute. word = 5 characters
VAR TRAVIS_WPM = 250
// thoughts per minute. the amount of 5 character words travis can fully process in one minute. can represent either composing or reading
VAR TRAVIS_TPM = 540
// how much to scale follow-up messages in thinking time. to define a follow-up: after the user sends a message, Travis sends one non-follow-up message and any number of follow-up messages.
VAR FOLLOW_UP_TPM_SCALE = 0.5

// in journo terms, this is the person you're currently chatting with. can be used to de-anonymyze travis after a while
VAR connected_user = ""

VAR total_respect = 10

VAR just_interrupted = false

== interrupted
{not just_interrupted: ->->}
// can count interruptions here if we want Travis to complain about you later
{!Ok, first of all, interrupting someone while they're typing is very rude. It derails the conversation and honestly just makes you look impatient.|What did I say about interruptions?|I really wish you would stop interrupting me.|Alright, I'm going to be nice. You get three more interruptions and then I'm out.|Two more interruptions. Use them wisely.|One more interruption before I stop answering any questions.|Last interruption.|Alright, that's it. I can't handle the constant interruptions. Good luck writing your article, you'll need it. -> END}
->->
