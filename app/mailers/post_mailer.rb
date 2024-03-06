class PostMailer < ApplicationMailer
    def welcome_email(post)
        @post = post
        mail(to: @post.email, subject: "Welcome to the post")
    end
    def update_post(post)
        @post = post
        mail(to: @post.email, subject: "Update post")
    end
end
