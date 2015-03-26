class JotMailer < ApplicationMailer
  def send_to_followers(jot)
    @jot = jot
    jot.user.followers.each do |follower|
      mail(to: follower.email, subject: "New jot!")
    end
  end
end
