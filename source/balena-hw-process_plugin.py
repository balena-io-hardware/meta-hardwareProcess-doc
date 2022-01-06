import pcbnew

class SimplePlugin(pcbnew.ActionPlugin):
    def defaults(self):
        self.name = "Balena HW Process"
        self.category = "Automation"
        self.description = "Make projects easier to manufacture using the Balena Prototyping Lab"

    def Run(self):
        # The entry function of the plugin that is executed on user action
        print("Hello World")

SimplePlugin().register() # Instantiate and register to Pcbnew
