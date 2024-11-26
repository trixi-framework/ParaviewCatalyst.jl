from paraview.simple import *
from paraview import catalyst

# Stub implementation for now to just trigger the pipeline for live updates

# registrationName must match the channel name used in the 'CatalystAdaptor'.
producer = TrivialProducer(registrationName="input")

options = catalyst.Options()
options.EnableCatalystLive = 1
#options.CatalystLiveURL = '192.168.1.1:22222'

def catalyst_execute(info):
    global producer
    global options
    producer.UpdatePipeline()
    SaveExtractsUsingCatalystOptions(options)