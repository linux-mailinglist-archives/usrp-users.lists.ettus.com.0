Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A04957CDBBA
	for <lists+usrp-users@lfdr.de>; Wed, 18 Oct 2023 14:32:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6DA4E38597A
	for <lists+usrp-users@lfdr.de>; Wed, 18 Oct 2023 08:32:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697632359; bh=+yz+DLjrw/9BSUhP4MxoBwfAwZIRO8WEzzNZW/kCefE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jl/gPq0qDilk68yKBVuhvtqJ4fsoDRGEQooEQsmB9d5IhiMTT+/S8XWbA9vNKHtTg
	 c5ng4NVWOV64nvGShuh8WrjzghI/tU30bUxFdOH7lJ0GbIM1rovKk5xC/Qy4BWrfi2
	 8AIjsJBrX5CspP9Quvueml1CX/QWLug+7Nme5+wd2PTfxo7BfIWFYZ6qyPJ9EEA1ry
	 TGkjox7AS/pFSMXBjPe2PJ+KLVBuibDZLCVAZ4GKVzegd83GSycT9SaaEAawmPBhNh
	 p7iyTmcSlIP6+BnMEEiSCNfY0bEhrLsyUNAL8oWf4GHL6jbkJzBH16RxuuQabXUT0S
	 KbpI0dDcWajow==
Received: from lxmtout2.gsi.de (lxmtout2.gsi.de [140.181.3.112])
	by mm2.emwd.com (Postfix) with ESMTPS id CB89138558C
	for <usrp-users@lists.ettus.com>; Wed, 18 Oct 2023 08:31:49 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout2.gsi.de (Postfix) with ESMTP id 2B3FA2030BE1;
	Wed, 18 Oct 2023 14:31:48 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at lxmtout2.gsi.de
Received: from lxmtout2.gsi.de ([127.0.0.1])
	by localhost (lxmtout2.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xeSexu9gu2bS; Wed, 18 Oct 2023 14:31:48 +0200 (CEST)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout2.gsi.de (Postfix) with ESMTPS id 076822030BE0;
	Wed, 18 Oct 2023 14:31:48 +0200 (CEST)
Received: from [140.181.67.245] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 18 Oct
 2023 14:31:47 +0200
Message-ID: <30f804ea-b167-47c5-bd07-1febb2c8d8b6@gsi.de>
Date: Wed, 18 Oct 2023 14:31:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, de-DE
To: Rob Kossler <rkossler@nd.edu>, "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <cff7659f-bcde-49eb-a71f-e3153570e8b9@gsi.de>
 <a6805b3d-4945-4474-83e3-ee7d5e82b3a9@gsi.de>
 <CAB__hTSF2GcGoM83Z704+mivoL8mpVEEQV8b=cZXtwEjbB+EiQ@mail.gmail.com>
 <f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com>
 <1f9bf05c-330c-4409-95e8-d4c061339217@gsi.de>
 <CAB__hTSh535ov7Rvz5RQwXGPN=_A+Z9ORxAYvC4ywNTXsTvo1w@mail.gmail.com>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
In-Reply-To: <CAB__hTSh535ov7Rvz5RQwXGPN=_A+Z9ORxAYvC4ywNTXsTvo1w@mail.gmail.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX6.Campus.gsi.de (10.10.4.96) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: RUTNIVVK4NSXUUG6FU74TGQNVGZQOFCC
X-Message-ID-Hash: RUTNIVVK4NSXUUG6FU74TGQNVGZQOFCC
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Rahul Singh <r.singh@gsi.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Loopback with stream from host
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RUTNIVVK4NSXUUG6FU74TGQNVGZQOFCC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5117072175227163583=="

--===============5117072175227163583==
Content-Language: en-GB, de-DE
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms050109040603020708050301"

--------------ms050109040603020708050301
Content-Type: multipart/alternative;
 boundary="------------gLAptgpmDd5Q835Zw03FwWJ2"

--------------gLAptgpmDd5Q835Zw03FwWJ2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear all,

thank you for the explanations. I don't think it is possible to mix USRP=20
with RFNoC radio sources, but it seams that the RFNoC RX Radio Block can=20
be triggered to issue a start-stream command via it's message port (I=20
cannot find any documentation about this, but the source code suggest it=20
[1]). However, the RFNoC Rx Streamer Block will always issuing a=20
start-stream command independently, since it is hardcoded.

I went ahead and wired the time_spec parameter from the RX-Streamer=20
implementation though to GNU Radio GUI. The first test looks promising,=20
with a time_spec of 1s the RFNoC stream is started 1s delayed and that=20
seams to indeed reduce the loopback latency and also keep it=20
reproducible with the flow graph below. I also added an option to=20
disable the start stream command altogether, so I can test starting the=20
stream via the message port of the RX Radio instead.

I have opened a PR for the changes, see=20
https://github.com/gnuradio/gnuradio/pull/6922

Best regards and thank you very much for your help
Philipp

[1]=20
https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/lib/rfnoc_rx_radio_impl.cc#L164

grafik

------------------------------------------------------------------------
*From:* Rob Kossler [mailto:rkossler@nd.edu]
*Date:* Tuesday, October 17, 2023 at 18:36 UTC+2
*Subject:* [USRP-users] Re: RFNoC Loopback with stream from host

>
>
> On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer=20
> <p.niedermayer@gsi.de> wrote:
> Dear Marcus and Rob,
>
> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.=C2=
=A0=20
> But I'm not sure how this works when you're using RFNoC from within=20
> Gnu Radio.
>
> @Marcus: I think for RFNoC it is the RX-Streamer that issues the start=20
> command. The C++ implementation [1] has a method to set the start=20
> time, but it is neither exposed via the Python bindings [2], nor to=20
> GNU Radio [3]. Would it be possible to update the bindings?
>
> Delaying the Rx Radio start time should be relatively easy to do.=20
> While I don't know how to do this from gnuradio, I do it all the time=20
> using UHD from C++.=C2=A0 Perhaps you will have to modify the GRC gener=
ated=20
> python to do it rather than do it from GRC - not really sure.
>
> @Rob: What methods are you using to delay the start time? The same as=20
> the RX-Streamer [1] uses internally?
> I tried calling the RX-streamers "start" and "stop" methods, since=20
> these are accessible from python. Stopping works, but when re-starting=20
> it gives me OOOOOOOO (see below).
>
> Yes, I use the issue_stream_cmd() function. I am not sure why your=20
> start and stop produce the behavior you described, but I want to=20
> mention a few things about how this works in UHD under-the-hood.
> 1) There is an issue_stream_cmd() available not only on rx_streamer=20
> but on the radio block as well. The radio block is derived from=20
> usrp_source in gnuradio I think (see here=20
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.ht=
ml>)
> 2) The way it normally works in UHD is you call issue_stream_cmd on=20
> the rx_streamer. Then the block controller propagates this cmd to the=20
> next upstream block controller in the graph.=C2=A0 This might normally =
be=20
> the DDC.=C2=A0 The DDC block then might use this information (such as t=
he=20
> timestamp) internally and then it propagates this cmd to the next=20
> upstream block controller.=C2=A0 Finally, it reaches the radio block=20
> controller which then controls the radio to start streaming at the=20
> desired time. In this way, all of the blocks in the chain are aware of=20
> the impending streaming.=C2=A0 But, that said, it is also possible to c=
all=20
> issue_stream_cmd directly on the radio block controller and it will=20
> start streaming. The only difference is that the other blocks in the=20
> chain will be unaware of the impending streaming.=C2=A0 The fact that y=
ou=20
> are getting streaming at all is a good indication that your custom=20
> block controllers are appropriately propagating the issue_stream_cmd.
> 3) If your graph was just a "repeater path" and did not include the=20
> rx_streamer, you would have to call issue_stream_cmd using the radio bl=
ock
> 4) When you stop and restart your graph and you get overflows, is it=20
> possible that the overflow is occurring because the data path is=20
> blocked at the multiply - perhaps the tx_streamer data is not flowing=20
> for some reason?=C2=A0 If so, this would cause the Overflows.
>
>
>
>
> [2]=20
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8=
c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
> [3]=20
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8=
c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml
>
>
>
>
> On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer=20
> <p.niedermayer@gsi.de> wrote:
>
>     Dear Marcus and Rob,
>
>>     The multi_usrp UHD "sink" in Gnu Radio has a "start time"
>>     parameter.=C2=A0 But I'm not sure how this works when you're using
>>     RFNoC from within Gnu Radio.=20
>     @Marcus: I think for RFNoC it is the RX-Streamer that issues the
>     start command. The C++ implementation [1] has a method to set the
>     start time, but it is neither exposed via the Python bindings [2],
>     nor to GNU Radio [3]. Would it be possible to update the bindings?
>
>>     Delaying=C2=A0the Rx Radio start time should be relatively easy to=
 do.
>>     While I don't know how to do this from gnuradio, I do it all the
>>     time using UHD from C++.=C2=A0 Perhaps you will have to modify the=
 GRC
>>     generated python to do it rather than do it from GRC - not really
>>     sure.
>     @Rob: What methods are you using to delay the start time? The same
>     as the RX-Streamer [1] uses internally?
>     I tried calling the RX-streamers "start" and "stop" methods, since
>     these are accessible from python. Stopping works, but when
>     re-starting it gives me OOOOOOOO (see below).
>
>     Best
>     Philipp
>
>     [1]
>     https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ff=
d6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93
>     [2]
>     https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ff=
d6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
>     [3]
>     https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ff=
d6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml
>
>
>     ******* MESSAGE DEBUG PRINT ********
>     ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))
>     ************************************
>     Stopping stream
>     rfnoc_rx_streamer :debug: UHD recv() call timed out.
>     ******* MESSAGE DEBUG PRINT ********
>     ((rate_now . 666323) (rate_avg . 1.79964e+06))
>     ************************************
>     rfnoc_rx_streamer :debug: UHD recv() call timed out.
>     rfnoc_rx_streamer :debug: UHD recv() call timed out.
>     Starting stream
>     rfnoc_rx_streamer :debug: Sending start stream command...
>     OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
>     >>> Done
>
>
>
>     -------------------------------------------------------------------=
-----
>     *From:* Marcus D. Leech [mailto:patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>]
>     *Date:* Monday, October 16, 2023 at 23:41 UTC+2
>     *Subject:* [USRP-users] Re: RFNoC Loopback with stream from host
>
>>     On 16/10/2023 17:31, Rob Kossler via USRP-users wrote:
>>>     Hi Philipp,
>>>     1. Delaying=C2=A0the Rx Radio start time should be relatively eas=
y to
>>>     do. While I don't know how to do this from gnuradio, I do it all
>>>     the time using UHD from C++. Perhaps you will have to modify the
>>>     GRC generated python to do it rather than do it from GRC - not
>>>     really sure.
>>     The multi_usrp UHD "sink" in Gnu Radio has a "start time"
>>     parameter.=C2=A0 But I'm not sure how this works when you're using=
 RFNoC
>>     =C2=A0 from within Gnu Radio.
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--------------gLAptgpmDd5Q835Zw03FwWJ2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body style=3D"padding-bottom: 1px;">
    <div class=3D"moz-cite-prefix">
      <div id=3D"rwhMsgHeader">
        <p>Dear all,</p>
        <p>thank you for the explanations. I don't think it is possible
          to mix USRP with RFNoC radio sources, but it seams that the
          RFNoC RX Radio Block can be triggered to issue a start-stream
          command via it's message port (I cannot find any documentation
          about this, but the source code suggest it [1]). However, the
          RFNoC Rx Streamer Block will always issuing a start-stream
          command independently, since it is hardcoded.<br>
        </p>
        <p>I went ahead and wired the time_spec parameter from the
          RX-Streamer implementation though to GNU Radio GUI. The first
          test looks promising, with a time_spec of 1s the RFNoC stream
          is started 1s delayed and that seams to indeed reduce the
          loopback latency and also keep it reproducible with the flow
          graph below. I also added an option to disable the start
          stream command altogether, so I can test starting the stream
          via the message port of the RX Radio instead.<br>
        </p>
        <p>I have opened a PR for the changes, see
          <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/g=
nuradio/gnuradio/pull/6922">https://github.com/gnuradio/gnuradio/pull/692=
2</a></p>
        <p>Best regards and thank you very much for your help<br>
          Philipp</p>
        <p>[1]
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/gnuradio/gn=
uradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_=
radio_impl.cc#L164">https://github.com/gnuradio/gnuradio/blob/5dc195b0195=
e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_radio_impl.cc#L164</a><=
/p>
        <p><img
src=3D"https://user-images.githubusercontent.com/19860638/276237881-b77fc=
227-419c-4975-b822-0b0459cd8689.png"
            alt=3D"grafik" style=3D"max-width: 100%;"></p>
        <hr id=3D"rwhMsgHdrDivider"
style=3D"border:0;border-top:1px solid #404040;padding:0;margin:10px 0 5p=
x 0;width:100%;">
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>From:</b>
          Rob Kossler [<a class=3D"moz-txt-link-freetext" href=3D"mailto:=
rkossler@nd.edu">mailto:rkossler@nd.edu</a>]</div>
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>Date:</b>
          Tuesday, October 17, 2023 at 18:36 UTC+2</div>
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>Subject:</b>
          [USRP-users] Re: RFNoC Loopback with stream from host</div>
        <br>
      </div>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSh535ov7Rvz5RQwXGPN=3D_A+Z9ORxAYvC4ywNTXsTvo1w@mail.gm=
ail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <br>
        On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer &lt;<=
a
          href=3D"mailto:p.niedermayer@gsi.de" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">p.niedermayer@gsi.de</a>&gt;
        wrote:<br>
        Dear Marcus and Rob,<br>
        <br>
        The multi_usrp UHD "sink" in Gnu Radio has a "start time"
        parameter.=C2=A0 But I'm not sure how this works when you're usin=
g
        RFNoC from within Gnu Radio.<br>
        <br>
        @Marcus: I think for RFNoC it is the RX-Streamer that issues the
        start command. The C++ implementation [1] has a method to set
        the start time, but it is neither exposed via the Python
        bindings [2], nor to GNU Radio [3]. Would it be possible to
        update the bindings?<br>
        <br>
        Delaying the Rx Radio start time should be relatively easy to
        do. While I don't know how to do this from gnuradio, I do it all
        the time using UHD from C++.=C2=A0 Perhaps you will have to modif=
y
        the GRC generated python to do it rather than do it from GRC -
        not really sure.<br>
        <br>
        @Rob: What methods are you using to delay the start time? The
        same as the RX-Streamer [1] uses internally?<br>
        I tried calling the RX-streamers "start" and "stop" methods,
        since these are accessible from python. Stopping works, but when
        re-starting it gives me OOOOOOOO (see below).<br>
        <br>
        Yes, I use the issue_stream_cmd() function. I am not sure why
        your start and stop produce the behavior you described, but I
        want to mention a few things about how this works in UHD
        under-the-hood.
        <div>1) There is an issue_stream_cmd() available not only on
          rx_streamer but on the radio block as well. The radio block is
          derived from usrp_source in gnuradio I think (see <a
href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sour=
ce.html"
            moz-do-not-send=3D"true">here</a>)</div>
        <div>2) The way it normally works in UHD is you call
          issue_stream_cmd on the rx_streamer. Then the block controller
          propagates this cmd to the next upstream block controller in
          the graph.=C2=A0 This might normally be the DDC.=C2=A0 The DDC =
block
          then might use this information (such as the timestamp)
          internally and then it propagates this cmd to the next
          upstream block controller.=C2=A0 Finally, it reaches the radio
          block controller which then controls the radio to start
          streaming at the desired time. In this way, all of the blocks
          in the chain are aware of the impending streaming.=C2=A0 But, t=
hat
          said, it is also possible to call issue_stream_cmd directly on
          the radio block controller and it will start streaming. The
          only difference is that the other blocks in the chain will be
          unaware of the impending streaming.=C2=A0 The fact that you are
          getting streaming at all is a good indication that your custom
          block controllers are appropriately propagating the
          issue_stream_cmd.</div>
        <div>3) If your graph was just a "repeater path" and did not
          include the rx_streamer, you would have to call
          issue_stream_cmd using the radio block</div>
        <div>4) When you stop and restart your graph and you get
          overflows, is it possible that the overflow is occurring
          because the data path is blocked at the multiply - perhaps the
          tx_streamer data is not flowing for some reason?=C2=A0 If so, t=
his
          would cause the Overflows.</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
          [2] <a
href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1=
ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3b=
b0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc</a><br>
          [3] <a
href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1=
ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3b=
b0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml</a><br>
          <br>
          <br>
        </div>
      </div>
      <br>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 17, 2023 at
          9:20=E2=80=AFAM Philipp Niedermayer &lt;<a
            href=3D"mailto:p.niedermayer@gsi.de" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">p.niedermayer@gsi.de</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div style=3D"padding-bottom:1px">
            <div>
              <div id=3D"m_-658956246501910016rwhMsgHeader">
                <p>Dear Marcus and Rob,</p>
                <blockquote type=3D"cite">The multi_usrp UHD "sink" in Gn=
u
                  Radio has a "start time" parameter.=C2=A0 But I'm not s=
ure
                  how this works when you're using RFNoC from within Gnu
                  Radio. </blockquote>
                @Marcus: I think for RFNoC it is the RX-Streamer that
                issues the start command. The C++ implementation [1] has
                a method to set the start time, but it is neither
                exposed via the Python bindings [2], nor to GNU Radio
                [3]. Would it be possible to update the bindings?<br>
              </div>
              <div><br>
              </div>
              <div>
                <blockquote type=3D"cite">Delaying=C2=A0the Rx Radio star=
t time
                  should be relatively easy to do. While I don't know
                  how to do this from gnuradio, I do it all the time
                  using UHD from C++.=C2=A0 Perhaps you will have to modi=
fy
                  the GRC generated python to do it rather than do it
                  from GRC - not really sure.</blockquote>
                @Rob: What methods are you using to delay the start
                time? The same as the RX-Streamer [1] uses internally?</d=
iv>
              <div>I tried calling the RX-streamers "start" and "stop"
                methods, since these are accessible from python.
                Stopping works, but when re-starting it gives me
                OOOOOOOO (see below).
                <p>Best<br>
                  Philipp</p>
                <p>[1]
                  <a
href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1=
ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://github.com/gn=
uradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/lib/=
rfnoc_rx_streamer_impl.cc#L83-L93</a><br>
                  [2]
                  <a
href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1=
ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://github.com/gn=
uradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/pyth=
on/uhd/bindings/rfnoc_rx_streamer_python.cc</a><br>
                  [3]
                  <a
href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1=
ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://github.com/gn=
uradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/=
uhd_rfnoc_rx_streamer.block.yml</a></p>
                <p><br>
                </p>
                <p><img src=3D"cid:part1.sDlKvXqD.RU10JBCw@gsi.de" alt=3D=
""
                    moz-do-not-send=3D"true"></p>
                <p>******* MESSAGE DEBUG PRINT ********<br>
                  ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))<br>
                  ************************************<br>
                  Stopping stream<br>
                  rfnoc_rx_streamer :debug: UHD recv() call timed out.<br=
>
                  ******* MESSAGE DEBUG PRINT ********<br>
                  ((rate_now . 666323) (rate_avg . 1.79964e+06))<br>
                  ************************************<br>
                  rfnoc_rx_streamer :debug: UHD recv() call timed out.<br=
>
                  rfnoc_rx_streamer :debug: UHD recv() call timed out.<br=
>
                  Starting stream<br>
                  rfnoc_rx_streamer :debug: Sending start stream
                  command...<br>
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO<br>
                  &gt;&gt;&gt; Done</p>
                <p><br>
                </p>
                <p><br>
                </p>
                <hr id=3D"m_-658956246501910016rwhMsgHdrDivider"
style=3D"border-width:1px 0px 0px;border-right-style:initial;border-botto=
m-style:initial;border-left-style:initial;border-right-color:initial;bord=
er-bottom-color:initial;border-left-color:initial;border-top-style:solid;=
border-top-color:rgb(64,64,64);padding:0px;margin:10px 0px 5px;width:100%=
">
                <div
style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px"><b>From:<=
/b>
                  Marcus D. Leech [<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">mailto:pat=
chvonbraun@gmail.com</a>]</div>
                <div
style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px"><b>Date:<=
/b>
                  Monday, October 16, 2023 at 23:41 UTC+2</div>
                <div
style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px"><b>Subjec=
t:</b>
                  [USRP-users] Re: RFNoC Loopback with stream from host</=
div>
                <br>
              </div>
            </div>
            <blockquote type=3D"cite">On 16/10/2023 17:31, Rob Kossler vi=
a
              USRP-users wrote: <br>
              <blockquote type=3D"cite">Hi Philipp, <br>
                1. Delaying=C2=A0the Rx Radio start time should be relati=
vely
                easy to do. While I don't know how to do this from
                gnuradio, I do it all the time using UHD from C++.=C2=A0
                Perhaps you will have to modify the GRC generated python
                to do it rather than do it from GRC - not really sure. <b=
r>
              </blockquote>
              The multi_usrp UHD "sink" in Gnu Radio has a "start time"
              parameter.=C2=A0 But I'm not sure how this works when you'r=
e
              using RFNoC <br>
              =C2=A0 from within Gnu Radio. <br>
              _______________________________________________ <br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>
              <br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a>
              <br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
  <lt-container></lt-container>
</html>

--------------gLAptgpmDd5Q835Zw03FwWJ2--

--------------ms050109040603020708050301
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
EbUwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYD
VQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRE
Rk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcN
MzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylf
S2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnl
m6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08
WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAd
BgNVHQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIu
cGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYB
BQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1T
ZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21
rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7L
n8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGpuEvObJAaguS5
Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2KgtdRXYShjqFu9V
NCIaE40GMIIG6zCCBdOgAwIBAgIMJfOJ+jUx1Lbfj3D5MA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIyMDEwNDA4NTkzMVoXDTI1MDEw
MzA4NTkzMVowgZExCzAJBgNVBAYTAkRFMTwwOgYDVQQKDDNHU0kgSGVsbWhvbHR6emVudHJ1
bSBmdWVyIFNjaHdlcmlvbmVuZm9yc2NodW5nIEdtYkgxFDASBgNVBAQMC05pZWRlcm1heWVy
MRAwDgYDVQQqDAdQaGlsaXBwMRwwGgYDVQQDDBNQaGlsaXBwIE5pZWRlcm1heWVyMIICIjAN
BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv+/Jmqu9myl16Gg64DqN9C7ufIgv54YnP8yW
kfMrZuE/mDbpBq/r6QISiRblgufwSlpCMssk4RVRpZgZiGNkfEmsE+1r/tN9QKLJY7biG/0X
8nj6b+WGc+2iRFPrkw/v8YJ0cfmR2hpfaBpxuqgUrFl+ZYGlBT5IBthM336AJ3Lj4wEaoVH0
2cyD38I/KhS+FyDtxVnd/1YotB+HPIiRCk1JW/8zi3L7EpYT6Pd04qCXtoj52RBt2rJpG6Et
i7CaMjfVLnbnnQMx+/ANmpc7oqpcZfVNsaMNlVBmrU8HnhXrDDC4pag6CUmY0rb1lqCTyJNC
F2eHQ5VB4xHXzd6Og2703T7lbOn/wKhzHvMAoaOd/5vbCi4OF9N26aTCThNX2ASaf+NlfAC1
xqOJntkaYKaApk3Qu9tgkkf5CgtNzW7Esew6HZmXH5wXjr2vy+Em/iiu1mhbs6Nxiai8121S
P8uShfkUaLP4w8yKcR6h+/4jg5HAMTmsLLLJtcy88grYW8msACuaP9puBFC0iEcPhktDg4K0
ilSu2ospZ4OZXKJWSfbPcxCuOrvxpP82Mlq47KK4K+E8snOM/uIRYil9pcKGuZ4accWkPdG9
5ezjciOJ3Zk0SZJFMuBobdqjlAt0Jrq9OLat9RBTKl6JW4+XPCrqLdL2kTemFc9B6bez7SkC
AwEAAaOCAkMwggI/MD4GA1UdIAQ3MDUwDwYNKwYBBAGBrSGCLAEBBDAQBg4rBgEEAYGtIYIs
AQEECjAQBg4rBgEEAYGtIYIsAgEECjAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIGwDATBgNV
HSUEDDAKBggrBgEFBQcDBDAdBgNVHQ4EFgQU42Rsgzk9DT0tz2YeGwapcKNre1AwHwYDVR0j
BBgwFoAUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0RBBgwFoEUcC5uaWVkZXJtYXllckBn
c2kuZGUwgY0GA1UdHwSBhTCBgjA/oD2gO4Y5aHR0cDovL2NkcDEucGNhLmRmbi5kZS9kZm4t
Y2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2FjcmwuY3JsMD+gPaA7hjlodHRwOi8vY2RwMi5wY2Eu
ZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NybC9jYWNybC5jcmwwgdsGCCsGAQUFBwEB
BIHOMIHLMDMGCCsGAQUFBzABhidodHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVy
L09DU1AwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZuLWNhLWdsb2Jh
bC1nMi9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAyLnBj
YS5kZm4uZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZI
hvcNAQELBQADggEBADWXU9fwSJjf/evRvIFS2wD2p+H5FHS4AGURYk8IGBCIFqizbW7TWMVk
3Jh2UeUFVb4tya9saIAoBypcyxrSxUy1owcxyPNzn/vByXM2963tnl50B7K4nEsIdVjFLCgP
cfE3yYWH8ZZ4pNMOR0zs/+GgPJLE76/xyvG6Fss5hSoxPchybevlwcGCWN2dPkUfCZmu1e/H
kMVu9w6FPXRnZvpTS5TGHzBfLUnSfVXcz75CiuGLKd5gtQ+L+Lx4CKxKnXXUYvHW8XA/oyeF
EAOV3TygkcAp3xFv/3Ng++fishQJMGKKLm9VyG6wRQbBZB3hDZLjIFdre6PhX4PPEAR5kpUx
ggPEMIIDwAIBATCBnjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQQIMJfOJ
+jUx1Lbfj3D5MA0GCWCGSAFlAwQCAwUAoIH3MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
HAYJKoZIhvcNAQkFMQ8XDTIzMTAxODEyMzE0N1owTwYJKoZIhvcNAQkEMUIEQKLr9shmZp+D
hb+E0pnN8gnl+TpNNRkBbGT7ZsZZcAYSa5k85PtJ0muW5rj69arNqv4aIs9xp4WnO5iGmMWC
I6wwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3
DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0D
AgIBKDANBgkqhkiG9w0BAQEFAASCAgAFMfHjZjhvPrpIsnpT3kCq77puXiLY+CeVAd5U9F9y
gGniYepuvAGaNZBCJJKvGcngPz61hLnPCOBVzG8WJF5rNA8AHAk+0pb74GZTdLm8VKzbE+97
YrC3Kno/7VxYbZwV0lyvbS8wgbsU1X1pq9sT0EyFzmRkomaWULFOfXttFS8DigwyTYSl6b58
lO9Af8eGSkm0umlAJSlOgzWZfjVL0HasRHU6ciygcsBU3LRg/p+6gNt3echU38k0zG+6eA6u
NbYBczNYCu9hmbfSbtCtu5RMxjx4N5dyAEOyhq/fsH/GU3jNQ++rn55GWNwvCSlGH5vy28/K
j6mJd+eHhSw6+dS4vLfK/TuFqtVMWGhGqSxNdP3exG5XF0jz8nV50o14/oV7195SHqNkmiQu
jR31n/bcgvkDTFM9yycaxNrAFk6NkmGmwMf3kJYtZB9SQpTUsybjPq90X9JX577VYbGI0qEL
gNsv16Of0CbiJXx5G5uB0dysxKNJGET89i55KAeyR8fyNTNPVE1hbeYlww4Omc7sPCyKr9aa
bS2cx5/ac1NwPqywzBHfeAf7BUw5GkN031oxSCpQzD7Gb7koofHfrmAH8+DxmuwIMwuWLii+
qf3bL9Vnwx4sMZvO0v6clh/ikYKL2z0Ffkb12+QiFcxpNG+Cx4AbvWG+Z2URNs7dQQAAAAAA
AA==
--------------ms050109040603020708050301--

--===============5117072175227163583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5117072175227163583==--
