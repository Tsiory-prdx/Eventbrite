class AttendanceMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'
    def attendance_email(attendance)
        @attendance = attendance
        @user = @attendance.user
        @event = @attendance.event
        @url  = 'http://monsite.fr/login'
        mail(to: @user.email, subject: 'Invitation pour vous !')
      end
end
