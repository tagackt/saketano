module ApplicationHelper

  def shallow_args(parent, child)
    params[:action] == 'new' ? [parent, child] : child
  end

  def raty_stars(n, max=5)
    n = 0 if n.nil?
    (
      image_tag('/images/star-on.png', alt: '') * n +
      image_tag('/images/star-half.png', alt: '') * (n*2%2) +
      image_tag('/images/star-off.png', alt: '') * (max-n)
    ).html_safe
  end

  def current_user?(user)
    user == current_user
  end

end
