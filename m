Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FBF115ED6
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 22:51:28 +0100 (CET)
Received: from [::1] (port=47176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idhz3-0000m0-Cc; Sat, 07 Dec 2019 16:51:25 -0500
Received: from mout.gmx.net ([212.227.17.21]:37851)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1idhyz-0000J4-Lr
 for usrp-users@lists.ettus.com; Sat, 07 Dec 2019 16:51:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575755440;
 bh=vfwbSkRpIuyZYMvQOi0PxlHBn6SdYHV/tIT/UDqNbcM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ja4dpvv6EUdsw6LIKDPI6QLaHPh/07ntLmRm3jWX4XbI9ZQF/oebT8xNzEvJdgBlF
 CxSlqk5JC1NPOhfYWMAFxJn6ZsgGwx5RTNZjbSJZIPHa/62kziQ3H8MSqNFaqOONdB
 HS/Ah94XUhgQgiKNgSX6X/lR5kXi/MXgHl9UuOAM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap67.server.lan [172.19.172.67]) (via HTTP); Sat, 7 Dec 2019
 22:50:40 +0100
MIME-Version: 1.0
Message-ID: <trinity-415e8cf0-8255-4bc0-98d4-f30371767be2-1575755440154@3c-app-gmx-bap67>
To: "Nate Temple" <nate.temple@ettus.com>
Date: Sat, 7 Dec 2019 22:50:40 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ukXQdPxpvmM6mtyI/k18Cd/PK7zAYaEyYc/CycvTWZl1+U3H92r+T7BVqVxzE1j/EWJaf
 B1qT/OtKbAYfpBygs94Ze56pHw+aF2Uy6aAnIT2UeDVqrfVzF48tyRmBTesDF4hM4W1f2YO3Mkbq
 /j/BQpL4nAnvIwMs+8+/56xro/YOelZ8mn4W9qjiPw/WCsbobOA1Bl10hP6qMg5AD2dSeTGf04If
 aXi3v6kO/phx9HPQW++38NYblygGN6eIoEmyggGvJoebbH5lStzeVESwAJzFI7q9ILNI5L+enf0B
 CQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6fnSsZaZDrg=:oZlrLLRKBCUszbzNqNPqJk
 KtGMBMw8nvEkiSmMhyiVc36EN9x55Lf2yh2v+aCOPJDhgBDDQ+t4NxiOu166Z9IIoCMGBczPn
 1g0W4MIKA3Zk1CmCZKb5V5P5YNs95z+5YD3W+gDilDkGFxSawJVXurruzqdfeh1619iaZfwbC
 uGfYzsvWYpsek5jRNe0M1xzLjmeppqG3hLF4z6PJU6quZSbXTyh9UOMTYrlQZwtzs5QkphaFL
 DzlyainnIiRhg3gI1rCtDmvJ/DmmdyL4NJ8u3OkGU4/lkkTODVKDNHDEfGO+w0mgHOO5aShfU
 GBbmoduqIheTQGASqp9g6TV0WnuCOzg/b0hVJUXZ1Xu0J6njniuZNf1tdNYdTM0DlfKxa1s/y
 Ep9VyyJQhi9nZZ68Bo00MIJTbv4C8ObQzWGTZKtFoKEt6S53UES/PPJXtqolQnS1LDPGTaaAo
 VawgvowvJbxiMAMW4ITFAr1oddoCSrHOwGhOIwtP6fb8tmShy6jDnNSOwhKGV+jYQprqlZW44
 jf2q827X78sOb1bT4pPPrHbadnI0YjwmhRNWakfoL5aYrX3m8BFPWPEbIEpWHq4s5fVpF0e5E
 6xm71di73PQqp7FILFDwsevaq/2ZiXVrACLMCHgM7cRjy2J+sNqIuyv3UgmkTP9H09snFDkN8
 k5dWLlvGcF4HiHc0a8wm/2FdQFmyqzERQhklD4+8ue/o+vA==
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

Hi Nate,

Nate wrote:
> Hi Luke,
>
> There is an example of setting timed commands in a custom block for the TwinRX in gr-doa here:
>
> https://github.com/EttusResearch/gr-doa/blob/master/python/twinrx_usrp_source.py#L101-L121
>
> You can do this with the standard UHD source/sink blocks, by first making your flowgraph, then generate the .py in GRC,
> then open up that .py file and modify it to add the timed command calls.
>
> If you modify the GRC and regenerate the .py, it'll overwrite your changes.

Thanks a lot! That makes sense.


Unfortunately I did not mention that I have a special case too: My TX is at fcenter and my RX is at 2*fcenter.
The code which is generated by GRC looks like this (currently I have one TX and two RX):

def set_fcenter(self, fcenter):
        self.fcenter = fcenter
        self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)
        self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
        self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)

Hence the code in your link does not 100% apply. However, I modified it as follows:

    def set_fcenter(self, fcenter):
        self.fcenter = fcenter

        tune_resp = self.uhd_usrp_sink_0.set_center_freq(fcenter, 0)
        tune_req_tx = uhd.tune_request(rf_freq=fcenter, rf_freq_policy=uhd.tune_request.POLICY_MANUAL,
               dsp_freq=tune_resp.actual_dsp_freq, dsp_freq_policy=uhd.tune_request.POLICY_MANUAL)
        tune_req_rx = uhd.tune_request(rf_freq=2*fcenter, rf_freq_policy=uhd.tune_request.POLICY_MANUAL,
               dsp_freq=2*tune_resp.actual_dsp_freq, dsp_freq_policy=uhd.tune_request.POLICY_MANUAL)

        self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
        self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 1)

        # Synchronize the tuned channels
        now = self.uhd_usrp_sink_0.get_time_now()
        self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.01))
        self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.01))

        self.uhd_usrp_sink_0.set_center_freq(tune_req_tx, 0)
        self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
        self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 1)

        self.uhd_usrp_source_0.clear_command_time()


So I think I need two tune_request objects because I have two different frequencies.
However, this does not work: Now my downconverted signal seems to be frequency shifted by roughly 5kHz.

Do you have an idea how to fix this for my scenario?

Thanks again,
Luke



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
