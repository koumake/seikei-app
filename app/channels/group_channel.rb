class GroupChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    binding.pry
    community = Community.create!(content: data['community'])
    template = ApplicationController.renderer.render(partial: 'communitys/community', locals: {community: community})
    ActionCable.server.broadcast 'group_channel', template
  end
end
