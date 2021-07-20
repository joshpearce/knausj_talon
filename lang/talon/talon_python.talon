tag: user.talon_python
-
standard imports:
    "from talon import ui, Module, Context, registry, actions, imgui, cron\n"
(context and module | module and context):
    """mod = Module()
    ctx = Context()
    """
action class:
    """@mod.action_class
    class Actions:
    """
mod capture:
    '''@mod.capture(rule="")
    def (m):
        ""'''
context lists:
    'ctx.lists["user."] = '
    key(left:5)
context matches:
    'ctx.matches = r""""""'
    key(left:3 enter:2 up)
clip capture:
    """with clip.capture() as s:
        actions.edit.copy()
    text = s.get()
    """
mod list: user.code_insert_function("mod.list", edit.selected_text())
mod tag: user.code_insert_function("mod.tag", edit.selected_text())
(action | fun) {user.talon_actions}:
    user.code_insert_function("actions.{talon_actions}", edit.selected_text())
context list {user.talon_lists}: 'ctx.lists["{talon_lists}"] = '