# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

site = Site.create(
  title: 'Should I build a native app or a responsive web app?',
  content: 'When you are considering building a new application, it is important
    to consider whether it should be <strong>native or responsive</strong>.',
  keywords: 'web development, native app, responsive app, web vs native, ' +
    'ios development, android development',
  description: 'Get some advice on what platform makes sense for your product: ' +
    'Should you build a native app or a responsive web app?'
)
question_1 = Question.create(
  site: site,
  content: 'Do you want your app to be accessible on <strong>all platforms</strong> (iOS,
    Android, Blackberry, etc)?'
)
question_2 = Question.create(
  site: site,
  content: 'Do you love the idea of supporting closed platforms and lining the
    pockets of CEOs of <strong>huge corporations</strong>?'
)
question_3 = Question.create(
  site: site,
  content: 'Are you targeting an affluent demographic?'
)

resolution_native = Resolution.create(
  site: site,
  content: 'Based on your answers, we would recommend building a native
  application. While it will be platform-specific, it enables access to fancy
  device features.'
)
resolution_web = Resolution.create(
  site: site,
  content: 'Based on your answers, we would recommend building a responsive web
  application. It is available to all platforms current and future that have a
  web browser.'
)
Answer.create(content: 'Yes', question: question_1, resolution: resolution_web)
Answer.create(content: 'No',  question: question_1, resolution: resolution_native)
Answer.create(content: 'Yes', question: question_2, resolution: resolution_native)
Answer.create(content: 'No',  question: question_2, resolution: resolution_web)
Answer.create(content: 'Yes', question: question_3, resolution: resolution_native)
Answer.create(content: 'No',  question: question_3, resolution: resolution_web)
