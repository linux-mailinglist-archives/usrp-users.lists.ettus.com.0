Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA50F119BD8
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2019 23:12:50 +0100 (CET)
Received: from [::1] (port=53990 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ienkN-0004yT-8g; Tue, 10 Dec 2019 17:12:47 -0500
Received: from mout.gmx.net ([212.227.17.20]:36107)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1ienkJ-0004rb-Q5
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 17:12:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576015922;
 bh=eBBqx+uP85hn3Ad4YKuRr7KOwUMiB4HBwCuBcpfUo3k=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=G+vnoq0+OcoTLOdZrF5P6dYS4bsSn3nGSuSH8janf/wbVvfRwoomsGbKlIx5XvLLp
 cuCgHhKsBowq0tV1i16U0tnDJSpFtTStbAb3J6fJz0LoSIxmMVcIkHY6QSBSKGDZO7
 WUsamaWp5mJAVmIoGQjImFwYNCMSCkWoQOTKDS98=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap30.server.lan [172.19.172.100]) (via HTTP); Tue, 10 Dec 2019
 23:12:02 +0100
MIME-Version: 1.0
Message-ID: <trinity-f74e7b0f-88a0-4aa0-ac0f-ac8cd023596e-1576015922416@3c-app-gmx-bap30>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Tue, 10 Dec 2019 23:12:02 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5DEF2185.5010308@gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
 <5DEEAC89.60403@gmail.com>
 <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
 <5DEEB562.4030602@gmail.com>
 <trinity-459dbf7b-f04c-4912-9571-52b962a344fb-1575950607303@3c-app-gmx-bs45>
 <5DEF2185.5010308@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:YG5XwM6gsnCMjdL5eWj0amhTqFOLSnic/bfuA/H6YIC4n0OMst7ZyUE43rvsKaaU0fk4A
 jpLF0qGtIo7nD+qO18JLddkzQQshIVYawT9wrneuy4NrqITKOHHKXmtfWHMUkk+Ip6UYzzZym686
 RjZ8Thji1OtkInIjEWMB0vbJVHKzOlOs/1U9Ok3YT0JRhqxdy/oZTbBLt7cTsupoSw6ZmPV4gQmy
 PTfizZDVk6XLcofqfPol2b3RNprZEYq3blj4qTj/sluAVMeoSbapjYzEmEYy0nvJ91SY23epytI7
 Bs=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JOlzMrqA/8g=:UczwFTr2kLKyJeYP7NIUt9
 I/xgKrGIpYyoFXBQbf0tFYDgmW43BXAUhJhjexSvhBIyTdSDDVbmWoiwBbD2+UWBbureTp8jG
 6W/tjRhMKBpJzVZfqQm0f8Xvnj4hOL6KCego2No9ueAEZIpGcEtOnBYOjcnq1KD7UESaERfRB
 zT2402ko/g2b1tMoidy9ZIqUWVDWFPugi8mo4zvad1wQV39n+putqrpRKYZrAcA+2ZKFDVl2+
 kT/my0AuYOI7UZsRLgQbIOPp50NEjuLbzpa2VThArfSK4KhRe5iBFQeUGX3R5Ovmd/S/G5UIx
 EWyYnqLTB8BMA+r/HKZFm8iww8/0GWiYwBas6Ve3XsPk/D92k6DHNkheF3VFdOOylMN2Rtbtr
 XZwthox6oXneClmm9ktGJpY0TFS/Az6Eg2fbvU6M/HGbii6hkNrfwThWnLWeBDvvjQ993iD0y
 Lxcjr15FQ/tYInzyE3IXYQ21hyc0dvCmWxAtstciitqYk0kKDUhCM/svkjS5Av7ZWmYgGWImd
 ECzXDKvzf2ApiQVPsQIg8Zjg0tUxBPdxDNnPvClZJNQMv7KKjpitYRNeWweidUxzlHCVxuZwt
 61GDBfLmlhyC5VDtixdgKHk5JNG7fUZQBlmpBY9Ti+uxiA7s35lMzJ6hdxNiT8aYdl4MKxHsH
 7TAUe+m4TMLCGWwcaj4KY/RuwEyQxkgFHxWXYA7qkQYB5cA==
Subject: Re: [USRP-users] Phase relation between RX/TX LO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Marcus,

> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> [...]
> You're using the MANUAL policy for BOTH DSP and RF. Let the automatic
> "stuff" do its thing, with the only difference being integer-N tuning.

Pretty incredible, I think I found the(?) issue.
https://kb.ettus.com/UBX#Phase_Synchronization:

"If you are operating the UBX at frequencies below 1 GHz and need phase synchronization, then it is necessary to select a 20 MHz daughterboard clock rate, instead of using the default 50 MHz rate [...] If you're using GNU Radio, then you can add "dboard_clock_rate=20e6" to the "Device Arguments" field of the properties for the UHD Sink and UHD Source blocks."


I did this and lo and behold, the phase stays constant across tunes!
It even works without mode_n=integer most of the time ... I think sometimes I get the frequency shift I was mentioning in a previous message.
With mode_n=integer it works for all frequencies I have tried. I really hope I did not miss anything.

Code:

self.uhd_usrp_source_0 = uhd.usrp_source(
    ",".join(("", "dboard_clock_rate=20e6")),
    uhd.stream_args(
        cpu_format="fc32",
        channels=range(2),
    ),
)
self.uhd_usrp_source_0.set_clock_rate(200e6, uhd.ALL_MBOARDS)
self.uhd_usrp_sink_0 = uhd.usrp_sink(
    ",".join(("", "dboard_clock_rate=20e6")),
    uhd.stream_args(
        cpu_format="fc32",
        channels=range(1),
    ),
)
self.uhd_usrp_sink_0.set_clock_rate(200e6, uhd.ALL_MBOARDS)
...

def set_fcenter(self, fcenter):
	self.fcenter = fcenter

	tune_req_tx = uhd.tune_request(target_freq=fcenter, lo_offset=1e6)
	tune_req_rx = uhd.tune_request(target_freq=2*fcenter, lo_offset=1e6)
	tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
	tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))

	now = self.uhd_usrp_sink_0.get_time_now()
	self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
	self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))

	res1 = self.uhd_usrp_sink_0.set_center_freq(tune_req_tx, 0)
	res2 = self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
	res3 = self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 1)

	self.uhd_usrp_source_0.clear_command_time()
	self.uhd_usrp_sink_0.clear_command_time()


Luke




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
