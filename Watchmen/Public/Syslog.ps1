function Syslog {    
    param(
        [parameter(Mandatory, Position = 0)]
        [string[]]$Endpoints
    )

    begin {
        Write-Debug -Message "Entering: $($PSCmdlet.MyInvocation.MyCommand.Name)"
        Assert-InWatchmen -Command $PSCmdlet.MyInvocation.MyCommand.Name
    }

    process {
        [pscustomobject]@{
            PSTypeName = 'Watchmen.Notifier.Syslog'
            Type = 'Syslog'
            Values = $Endpoints
        }
    }

    end {
        Write-Debug -Message "Exiting: $($PSCmdlet.MyInvocation.MyCommand.Name)"
    }
}
