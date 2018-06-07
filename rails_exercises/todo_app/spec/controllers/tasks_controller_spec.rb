require 'rails_helper'

describe TasksController do
  describe 'post to create task' do
    let(:validTaskParams) { { 'task' => { 'title' => 'new valid task', 'dueDate' => Date.today } } }
    let(:invalidTaskParams) { { 'task' => { 'title' => nil, 'dueDate' => Date.today } } }
    let(:taskController) { TasksController.new }

    context 'when task is valid' do
      it 'should render list page' do
        post :create, validTaskParams

        expect(response).to redirect_to('/')
      end
    end

    context 'when task is invalid' do
      it 'should redirect to list action' do
        post :create, invalidTaskParams

        expect(response).to render_template('new')
        expect(response).to be_ok
      end
    end
  end

  describe 'post to update task' do
    let(:task) {
      Task.create!('title' => 'old title', 'dueDate' => Date.today)
    }

    let(:validTaskParams) { { 'task' => { 'id' => task.id, 'title' => 'new valid task', 'dueDate' => Date.today } } }
    let(:invalidTaskParams) { { 'task' => { 'id' => task.id, 'title' => nil, 'dueDate' => Date.today } } }
    context 'when task is valid' do
      it 'should render list page' do
        post :update, validTaskParams

        expect(response).to redirect_to('/')
      end
    end
    context 'when task is invalid' do
      it 'should redirect to list action' do
        post :update, invalidTaskParams

        expect(response).to render_template('new')
        expect(response).to be_ok
      end
    end
  end
end
