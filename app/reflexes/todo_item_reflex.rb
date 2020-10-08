class TodoItemReflex < ApplicationReflex

  def mark_incomplete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: false, completed_at: nil)
  end

  def mark_complete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: true, completed_at: Time.now)
  end

  def delete_item
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.delete
  end

end
