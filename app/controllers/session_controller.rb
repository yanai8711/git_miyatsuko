class SessionController < ApplicationController
skip_before_action :require_login

 def new  #���O�C���y�[�W��\��
 end
  
 def create    #���[�U�F�؂ƃZ�b�V�����̕ۑ�
  #User���f�����烆�[�U���A�p�X���[�h����v���郆�[�U������
  @user = User.find_by(name: params[:name], password: params[:password])

  #���[�U�����������΃Z�b�V�����Ƀ��[�U����ۑ�
  #���[�U��������Ȃ���΃Z�b�V��������j���inil�j
  if @user
    session[:user_name] = @user
    redirect_to("/")    #�g�b�v�y�[�W�։�ʑJ��
  else
    session[:user_name] = nil
    redirect_to("/login")    #���O�C���y�[�W�։�ʑJ��
  end
 end
  
 def destroy    #�Z�b�V��������j���i���O�A�E�g�j
  session[:user_name] = nil
  redirect_to("/login")
 end

 end
  
 def destroy    #�Z�b�V��������j���i���O�A�E�g�j
  session[:user_name] = nil
  redirect_to("/login")
 end

end