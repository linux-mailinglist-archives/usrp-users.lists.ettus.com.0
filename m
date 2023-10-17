Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 282767CC8F9
	for <lists+usrp-users@lfdr.de>; Tue, 17 Oct 2023 18:38:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1C53385C92
	for <lists+usrp-users@lfdr.de>; Tue, 17 Oct 2023 12:37:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697560678; bh=Zcd7JvnU2hbHz8eQhUVI8/XPCBuneE+5IvG2n0GzIQw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MCSdx0UPbStpiOWLYMZpepgtJC/UcyQSd5cL47KMex1tFq9NyM5SdD+zYcHhgZ/WX
	 4RGl8b+cv8Th6TyaHrvX1h+MRQd5x1zaexh3Ex0u4afeIgcKRYYvErScE2aq28/OHC
	 JrecsECt2XIOk+OWvQiKTA8e2KH4fXynpCS7lcWOujnefinv2S01BlVQcPhUPuNTn+
	 MrWtNneMbTFQSRoKS98F+siQYlddKTjraB0ooYO4vMLtywflsp7yCGJeH+ZjetawTZ
	 8yIklTHaDawj8FRsUlLA8muA6tdk7ybsSd8HQ1PRIbtwPiqbFTyWcbRDYwv2SnAk39
	 mwIrV75WUn/Fw==
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5ED61385A37
	for <usrp-users@lists.ettus.com>; Tue, 17 Oct 2023 12:37:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="R7RfYiCv";
	dkim-atps=neutral
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50435a9f800so7504027e87.2
        for <usrp-users@lists.ettus.com>; Tue, 17 Oct 2023 09:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1697560625; x=1698165425; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mOga6G1f+3p5XcC6YzvnE0Q2eAlsqknHY7UAIUe2JAs=;
        b=R7RfYiCvTBmQBsF+TjGUdVBwot4t8dFMPfgEaheDHCefzpEVKyBAK98iHo3wLXJQLl
         l69FMe/UM4t8ZnALgYixIz32T7IvdlphuvoyQwfXPommHbaiiShuU54ZRGpdfPvyxUcd
         sGHaFOvk0Q0LAN2tb4h/nTefRg4Ak7CfWr0yL4R7TDK2BuLr5wjDK7m6nrYarFJTaZZ7
         Xqx1NElaAc7x2YQ3VnONZdfr3mo4XiUxkusVYgL/10oap1wCA83AO0jDdHcee9VWhaWa
         Hi5XwEYr/+N2lakdgoZSsiGO7gEcNMxzsVMjAC9mULb2AWEXuJ+Pw3R3DgAncf8zZNsw
         R/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697560625; x=1698165425;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOga6G1f+3p5XcC6YzvnE0Q2eAlsqknHY7UAIUe2JAs=;
        b=RwU7pmeyDDLJtrTAGZTU7QY6Jlky3hDtjc9LGzrn0o+1VteEEXcqRBnBLrAfGVrOQL
         meDjn0vf5JoM7spzkyMMFR56VdqRU8iE32x58w5Hex8fErTecwsZLZL5rjirH/gqbxVY
         leTBsZPNDXQExAzNGUlnC3wSqVOcD5gFqA1MKYr3079HLlZte8TmqSAHCYS8JG2z4IS+
         fQ27W+5+9MmA87+S7olQUzmeteFgd4JYnNnpQlsc+KXfJ7cS/0DSqw0GgI9kkL/2r4ws
         9U+Nnib18v4R5++C9gTLN+v3uSA0Llk0e8CbnhRy0IwdI/fkOaO+x0v2ZqsUQn4BdtyK
         yASA==
X-Gm-Message-State: AOJu0Yx4axZR0qd6x6eMeV/QJbEw73JAj2Bioh+34LkH9Hq0R0ds9k7g
	b6Tvh/U2HRBv0/Svu19BQ1irzW9OW2IE2BEQ6ZR/bg==
X-Google-Smtp-Source: AGHT+IGDYh5jrbBVvzAE1AR7wHs1Pv9YWZR/uavjCfzTqqy5A0BbQ/fIMHG73tb/KHnwLWuq5MUbleHNL7dQ6yczhMQ=
X-Received: by 2002:a19:5011:0:b0:4fb:bef0:948e with SMTP id
 e17-20020a195011000000b004fbbef0948emr2146417lfb.5.1697560624256; Tue, 17 Oct
 2023 09:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <cff7659f-bcde-49eb-a71f-e3153570e8b9@gsi.de> <a6805b3d-4945-4474-83e3-ee7d5e82b3a9@gsi.de>
 <CAB__hTSF2GcGoM83Z704+mivoL8mpVEEQV8b=cZXtwEjbB+EiQ@mail.gmail.com>
 <f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com> <1f9bf05c-330c-4409-95e8-d4c061339217@gsi.de>
In-Reply-To: <1f9bf05c-330c-4409-95e8-d4c061339217@gsi.de>
Date: Tue, 17 Oct 2023 12:36:52 -0400
Message-ID: <CAB__hTSh535ov7Rvz5RQwXGPN=_A+Z9ORxAYvC4ywNTXsTvo1w@mail.gmail.com>
To: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Type: multipart/mixed; boundary="000000000000ffa5010607ec2128"
Message-ID-Hash: D5XSUUEZFZYBAWAGLQLGULJ4S6VBBIZD
X-Message-ID-Hash: D5XSUUEZFZYBAWAGLQLGULJ4S6VBBIZD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com, Rahul Singh <r.singh@gsi.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Loopback with stream from host
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D5XSUUEZFZYBAWAGLQLGULJ4S6VBBIZD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>

--000000000000ffa5010607ec2128
Content-Type: multipart/alternative; boundary="000000000000ffa4ff0607ec2126"

--000000000000ffa4ff0607ec2126
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer <p.niedermayer@=
gsi.de>
wrote:
> Dear Marcus and Rob,
>
> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.  But
I'm not sure how this works when you're using RFNoC from within Gnu Radio.
>
> @Marcus: I think for RFNoC it is the RX-Streamer that issues the start
command. The C++ implementation [1] has a method to set the start time, but
it is neither exposed via the Python bindings [2], nor to GNU Radio [3].
Would it be possible to update the bindings?
>
> Delaying the Rx Radio start time should be relatively easy to do. While I
don't know how to do this from gnuradio, I do it all the time using UHD
from C++.  Perhaps you will have to modify the GRC generated python to do
it rather than do it from GRC - not really sure.
>
> @Rob: What methods are you using to delay the start time? The same as the
RX-Streamer [1] uses internally?
> I tried calling the RX-streamers "start" and "stop" methods, since these
are accessible from python. Stopping works, but when re-starting it gives
me OOOOOOOO (see below).

Yes, I use the issue_stream_cmd() function. I am not sure why your start
and stop produce the behavior you described, but I want to mention a few
things about how this works in UHD under-the-hood.
1) There is an issue_stream_cmd() available not only on rx_streamer but on
the radio block as well. The radio block is derived from usrp_source in
gnuradio I think (see here
<https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html>)
2) The way it normally works in UHD is you call issue_stream_cmd on the
rx_streamer. Then the block controller propagates this cmd to the next
upstream block controller in the graph.  This might normally be the DDC.
The DDC block then might use this information (such as the timestamp)
internally and then it propagates this cmd to the next upstream block
controller.  Finally, it reaches the radio block controller which then
controls the radio to start streaming at the desired time. In this way, all
of the blocks in the chain are aware of the impending streaming.  But, that
said, it is also possible to call issue_stream_cmd directly on the radio
block controller and it will start streaming. The only difference is that
the other blocks in the chain will be unaware of the impending streaming.
The fact that you are getting streaming at all is a good indication that
your custom block controllers are appropriately propagating the
issue_stream_cmd.
3) If your graph was just a "repeater path" and did not include the
rx_streamer, you would have to call issue_stream_cmd using the radio block
4) When you stop and restart your graph and you get overflows, is it
possible that the overflow is occurring because the data path is blocked at
the multiply - perhaps the tx_streamer data is not flowing for some
reason?  If so, this would cause the Overflows.




> [2]
https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d=
3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
> [3]
https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d=
3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml
>
>


On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Niedermayer <p.niedermayer@=
gsi.de>
wrote:

> Dear Marcus and Rob,
>
> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.  But
> I'm not sure how this works when you're using RFNoC from within Gnu Radio=
.
>
> @Marcus: I think for RFNoC it is the RX-Streamer that issues the start
> command. The C++ implementation [1] has a method to set the start time, b=
ut
> it is neither exposed via the Python bindings [2], nor to GNU Radio [3].
> Would it be possible to update the bindings?
>
> Delaying the Rx Radio start time should be relatively easy to do. While I
> don't know how to do this from gnuradio, I do it all the time using UHD
> from C++.  Perhaps you will have to modify the GRC generated python to do
> it rather than do it from GRC - not really sure.
>
> @Rob: What methods are you using to delay the start time? The same as the
> RX-Streamer [1] uses internally?
> I tried calling the RX-streamers "start" and "stop" methods, since these
> are accessible from python. Stopping works, but when re-starting it gives
> me OOOOOOOO (see below).
>
> Best
> Philipp
>
> [1]
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93
> [2]
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc
> [3]
> https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c3=
6d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml
>
>
> ******* MESSAGE DEBUG PRINT ********
> ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))
> ************************************
> Stopping stream
> rfnoc_rx_streamer :debug: UHD recv() call timed out.
> ******* MESSAGE DEBUG PRINT ********
> ((rate_now . 666323) (rate_avg . 1.79964e+06))
> ************************************
> rfnoc_rx_streamer :debug: UHD recv() call timed out.
> rfnoc_rx_streamer :debug: UHD recv() call timed out.
> Starting stream
> rfnoc_rx_streamer :debug: Sending start stream command...
> OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
> >>> Done
>
>
>
> ------------------------------
> *From:* Marcus D. Leech [mailto:patchvonbraun@gmail.com
> <patchvonbraun@gmail.com>]
> *Date:* Monday, October 16, 2023 at 23:41 UTC+2
> *Subject:* [USRP-users] Re: RFNoC Loopback with stream from host
>
> On 16/10/2023 17:31, Rob Kossler via USRP-users wrote:
>
> Hi Philipp,
> 1. Delaying the Rx Radio start time should be relatively easy to do. Whil=
e
> I don't know how to do this from gnuradio, I do it all the time using UHD
> from C++.  Perhaps you will have to modify the GRC generated python to do
> it rather than do it from GRC - not really sure.
>
> The multi_usrp UHD "sink" in Gnu Radio has a "start time" parameter.  But
> I'm not sure how this works when you're using RFNoC
>   from within Gnu Radio.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000ffa4ff0607ec2126
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tue, Oct 17, 2023 at 9:20=E2=80=AFAM Philipp Ni=
edermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niedermayer@gsi.de<=
/a>&gt; wrote:<br>&gt; Dear Marcus and Rob,<br>&gt;<br>&gt; The multi_usrp =
UHD &quot;sink&quot; in Gnu Radio has a &quot;start time&quot; parameter.=
=C2=A0 But I&#39;m not sure how this works when you&#39;re using RFNoC from=
 within Gnu Radio.<br>&gt;<br>&gt; @Marcus: I think for RFNoC it is the RX-=
Streamer that issues the start command. The C++ implementation [1] has a me=
thod to set the start time, but it is neither exposed via the Python bindin=
gs [2], nor to GNU Radio [3]. Would it be possible to update the bindings?<=
br>&gt;<br>&gt; Delaying the Rx Radio start time should be relatively easy =
to do. While I don&#39;t know how to do this from gnuradio, I do it all the=
 time using UHD from C++.=C2=A0 Perhaps you will have to modify the GRC gen=
erated python to do it rather than do it from GRC - not really sure.<br>&gt=
;<br>&gt; @Rob: What methods are you using to delay the start time? The sam=
e as the RX-Streamer [1] uses internally?<br>&gt; I tried calling the RX-st=
reamers &quot;start&quot; and &quot;stop&quot; methods, since these are acc=
essible from python. Stopping works, but when re-starting it gives me OOOOO=
OOO (see below).<br><br>Yes, I use the issue_stream_cmd() function. I am no=
t sure why your start and stop produce the behavior you described, but I wa=
nt to mention a few things about how this works in UHD under-the-hood.<div>=
1) There is an issue_stream_cmd() available not only on rx_streamer but on =
the radio block as well. The radio block is derived from usrp_source in gnu=
radio I think (see <a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_=
1_1uhd_1_1usrp__source.html">here</a>)</div><div>2) The way it normally wor=
ks in UHD is you call issue_stream_cmd on the rx_streamer. Then the block c=
ontroller propagates this cmd to the next upstream block controller in the =
graph.=C2=A0 This might normally be the DDC.=C2=A0 The DDC block then might=
 use this information (such as the timestamp) internally and then it propag=
ates this cmd to the next upstream block controller.=C2=A0 Finally, it reac=
hes the radio block controller which then controls the radio to start strea=
ming at the desired time. In this way, all of the blocks in the chain are a=
ware of the impending streaming.=C2=A0 But, that said, it is also possible =
to call issue_stream_cmd directly on the radio block controller and it will=
 start streaming. The only difference is that the other blocks in the chain=
 will be unaware of the impending streaming.=C2=A0 The fact that you are ge=
tting streaming at all is a good indication that your custom block controll=
ers are appropriately propagating the issue_stream_cmd.</div><div>3) If you=
r graph was just a &quot;repeater path&quot; and did not include the rx_str=
eamer, you would have to call issue_stream_cmd using the radio block</div><=
div>4) When you stop and restart your graph and you get overflows, is it po=
ssible that the overflow is occurring because the data path is blocked at t=
he multiply - perhaps the tx_streamer data is not flowing for some reason?=
=C2=A0 If so, this would cause the Overflows.</div><div><br></div><div><br>=
</div><div><br></div><div><br>&gt; [2] <a href=3D"https://github.com/gnurad=
io/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd=
/bindings/rfnoc_rx_streamer_python.cc">https://github.com/gnuradio/gnuradio=
/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/r=
fnoc_rx_streamer_python.cc</a><br>&gt; [3] <a href=3D"https://github.com/gn=
uradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uh=
d_rfnoc_rx_streamer.block.yml">https://github.com/gnuradio/gnuradio/blob/5d=
c195b0195e8a073b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.blo=
ck.yml</a><br>&gt;<br>&gt;<br></div></div><br><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 17, 2023 at 9:20=E2=80=
=AFAM Philipp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.nie=
dermayer@gsi.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><u></u>

 =20
   =20
 =20
  <div style=3D"padding-bottom:1px">
    <div>
      <div id=3D"m_-658956246501910016rwhMsgHeader">
        <p>Dear Marcus and Rob,</p>
        <blockquote type=3D"cite">The multi_usrp UHD &quot;sink&quot; in Gn=
u Radio
          has a &quot;start time&quot; parameter.=C2=A0 But I&#39;m not sur=
e how this works
          when you&#39;re using RFNoC from within Gnu Radio.
        </blockquote>
        @Marcus: I think for RFNoC it is the RX-Streamer that issues the
        start command. The C++ implementation [1] has a method to set
        the start time, but it is neither exposed via the Python
        bindings [2], nor to GNU Radio [3]. Would it be possible to
        update the bindings?<br>
      </div>
      <div><br>
      </div>
      <div>
        <blockquote type=3D"cite">Delaying=C2=A0the Rx Radio start time sho=
uld
          be relatively easy to do. While I don&#39;t know how to do this
          from gnuradio, I do it all the time using UHD from C++.=C2=A0
          Perhaps you will have to modify the GRC generated python to do
          it rather than do it from GRC - not really sure.</blockquote>
        @Rob: What methods are you using to delay the start time? The
        same as the RX-Streamer [1] uses internally?</div>
      <div>I tried calling the RX-streamers &quot;start&quot; and &quot;sto=
p&quot; methods,
        since these are accessible from python. Stopping works, but when
        re-starting it gives me OOOOOOOO (see below).
        <p>Best<br>
          Philipp</p>
        <p>[1]
<a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c=
1ffd6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93" target=3D"=
_blank">https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ff=
d6c8c36d3bb0bd2/gr-uhd/lib/rfnoc_rx_streamer_impl.cc#L83-L93</a><br>
          [2]
<a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c=
1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_python.cc" =
target=3D"_blank">https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a0=
73b7f7c1ffd6c8c36d3bb0bd2/gr-uhd/python/uhd/bindings/rfnoc_rx_streamer_pyth=
on.cc</a><br>
          [3]
<a href=3D"https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c=
1ffd6c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml" target=3D"_b=
lank">https://github.com/gnuradio/gnuradio/blob/5dc195b0195e8a073b7f7c1ffd6=
c8c36d3bb0bd2/gr-uhd/grc/uhd_rfnoc_rx_streamer.block.yml</a></p>
        <p><br>
        </p>
        <p><img src=3D"cid:part1.sDlKvXqD.RU10JBCw@gsi.de" alt=3D""></p>
        <p>******* MESSAGE DEBUG PRINT ********<br>
          ((rate_now . 1.99964e+06) (rate_avg . 1.99964e+06))<br>
          ************************************<br>
          Stopping stream<br>
          rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
          ******* MESSAGE DEBUG PRINT ********<br>
          ((rate_now . 666323) (rate_avg . 1.79964e+06))<br>
          ************************************<br>
          rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
          rfnoc_rx_streamer :debug: UHD recv() call timed out.<br>
          Starting stream<br>
          rfnoc_rx_streamer :debug: Sending start stream command...<br>
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO<br>
          &gt;&gt;&gt; Done</p>
        <p><br>
        </p>
        <p><br>
        </p>
        <hr id=3D"m_-658956246501910016rwhMsgHdrDivider" style=3D"border-wi=
dth:1px 0px 0px;border-right-style:initial;border-bottom-style:initial;bord=
er-left-style:initial;border-right-color:initial;border-bottom-color:initia=
l;border-left-color:initial;border-top-style:solid;border-top-color:rgb(64,=
64,64);padding:0px;margin:10px 0px 5px;width:100%">
        <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px=
"><b>From:</b>
          Marcus D. Leech [<a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">mailto:patchvonbraun@gmail.com</a>]</div>
        <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px=
"><b>Date:</b>
          Monday, October 16, 2023 at 23:41 UTC+2</div>
        <div style=3D"font-family:Tahoma;color:rgb(64,64,64);font-size:13px=
"><b>Subject:</b>
          [USRP-users] Re: RFNoC Loopback with stream from host</div>
        <br>
      </div>
    </div>
    <blockquote type=3D"cite">On
      16/10/2023 17:31, Rob Kossler via USRP-users wrote:
      <br>
      <blockquote type=3D"cite">Hi Philipp,
        <br>
        1. Delaying=C2=A0the Rx Radio start time should be relatively easy =
to
        do. While I don&#39;t know how to do this from gnuradio, I do it al=
l
        the time using UHD from C++.=C2=A0 Perhaps you will have to modify
        the GRC generated python to do it rather than do it from GRC -
        not really sure.
        <br>
      </blockquote>
      The multi_usrp UHD &quot;sink&quot; in Gnu Radio has a &quot;start ti=
me&quot;
      parameter.=C2=A0 But I&#39;m not sure how this works when you&#39;re =
using
      RFNoC
      <br>
      =C2=A0 from within Gnu Radio.
      <br>
      _______________________________________________
      <br>
      USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>
      <br>
      To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
      <br>
    </blockquote>
  </div>
  <u></u><u></u>
</blockquote></div>

--000000000000ffa4ff0607ec2126--

--000000000000ffa5010607ec2128
Content-Type: image/png; name="W3ihPeBCe305u1PN.png"
Content-Disposition: attachment; filename="W3ihPeBCe305u1PN.png"
Content-Transfer-Encoding: base64
Content-ID: <>
X-Attachment-Id: 

iVBORw0KGgoAAAANSUhEUgAAAoEAAAH0CAYAAABCVPdXAAAgAElEQVR4XuydB7gURdaGzyVJEiQu
kjNKFhCQLDknkSTpFwkSJKorSUCSBAERUFDRZWVBQFhYUEFEgqBkkLTknIMoSYL89yu2x75Dz3RP
utPT89U+PKxMd9Wpt3pm3jlV1R3zILYICwmQAAmQAAmQAAmQQFQRiKEERtV4s7MkQAIkQAIkQAIk
oAhQAnkhkAAJkAAJkAAJkEAUEqAERuGgs8skQAIkQAIkQAIkQAnkNUACJEACJEACJEACUUjANwlc
0F9k7YciecqLvPZN7GRyTBQiY5dJgARIgARIgARIIPIJWJPAQ+tF3qsq8vI/RUo1F7l2VuStHCJP
ZBEZdTTyKbAHJEACJEACJEACJBBlBKxJYO80sRJ4UaRH8r/wtJ4msnK8yLD9UYaM3SUBEiABEiAB
EiCByCdgTQLRzz5pRSZeETm7V+TJgiLdk4pMvR35BNgDEiABEiABEiABEogAAjGxy/C2bNkiJUuW
NIx269atUqpUKbF6C2jrEojmuiURGXFYZFAekWl3fMT1tXSJqSszXGeVk0kHf5ReeX2sJhSHH5os
5fN9Kc2DFk8w+oo6RkjBoMVkAO7rLhJTVxuRzrL8wUdSxxvfoHMKxWCyThIgARIgARJwJgFI3nPl
K8jGH9c/IoLeXvNEw3cJhPytniLyfE8fCceVmkOTy0u+L5vLwR97Sfx7YKgFy5++uscU4hiV0O2V
QZr4xf735IO9pJdXC/RxyH06PMT99SkWHkwCJEACJEAC9iRgJHv+CCB655sELh4osmKcSMLEsVnB
xSJP1/CBUDxLjtfIQi0c/vTVn3N8wO9+KLKAIwqGScKN4g71mATAiqeSAAmQAAmQgI0I6KUPYXnK
DpqF7JsE6mvr/zeRm1cf/kvRBiJdF5q05U1yHr4mnUVmzCj8cFpSZap6y4b/1dp5+QP5SGWp/lfP
8ubyZd2Hr5ebdFB+1OaV45ynTXHq69dqdFUssc3FnXo1rOOQTC6fT3r/73QVj3gSKU99/VykfT7Z
O0jrC7qDOnZLuQ0bXH2Vzsv/islSP2PRufOZVFh693441RuHj2uUHk5Z79azU6/9L3bD8/X98jYO
vo5RY1msXyqg+h+2lKTZe4avkwAJkAAJkEDYCWgiiECMpoetBOi/BGJ9oLYuUP//PbbqbYrUXUge
/nesDT4Uvzhr0f633q7cpIdZrEde062jixWs8gdejxXEg27CYy6krrV4Wh35x0nM4sZx5cRjNs1L
X3GOrp6vu8TI4sbop1FMsWsotX6q9XtAgnV7FvhoIhXnPPfB+Uts40pkbLuG57tLoC6+oIxRiNdA
WnlH8BgSIAESIAESiAACESiB+o0h+o0IbgLkvl5NJcw8yZLutXxxs4dqDPVZNdcmCy8SKB7qeP2A
ykzG7mb5K+voVXi99XWxNNZkrvwBeV2tizSbDta9rmLUrefzysfCNOv/Mp+FlXRbFeRH6w3uGEXA
O5AhkgAJkAAJkEAYCIRnOnjhGyJ/yy9S4RWRfhlEbl172HXsGE6bzQSDNxkJRAIfZrPUFKuSwLhy
9DCowARL3zG1oSV2TvivzJlRt72LF+poL5/H/q+9+vvhVHZgMXrPKJpn2FS/9g56dGo8TlwG08Eu
sdaNwyMi6c8YheFdxSZJgARIgARIwOYE4n9jyJk9saL3TFwsft0ixpOMGE+Fxp0O1uTObeo4TtbQ
ZJ2blUxgXk91/NV9TeJ+xBSx4eYKk+wbYm6/VwrLbin4uXabHB8k8H8xeuaj5+whlq9jdwPni90N
rLZmP5S0L5sjy4mpc0/nPzod7FpT6G0c/Bojm78LGR4JkAAJkAAJxDOB8NwiBmv+KnURaRl7axgU
/HeSFLFTo//bGGIJgg+ZQOUl+mlZ/T0FH9bzcBPJw10acbJybhtKjKeDH04hq1vkGU0XG9XRePGj
99SzuCbQCI9qX+JugPAak3um0ITPX/cX9MT9f2srteBcmzF8mw42Hgd/xih2pWOcMeHGEEtvKx5E
AiRAAiQQNQTCc7No940fc7qJrP/YjxtGB2OcLKxxC0YzIa7jr+nbEDcUsup9lPqQxcGKSYAESIAE
SIAE/CFgbXcwJPCJLCKjjj5sA/+dr1Lso+S+86fNAM9xgASq6WCRz8Nyo+wA8btOpwQGiyTrIQES
IAESIIFwELAmgZr46SP0eU1gsLoXyRKo3ZLFRo/M83tYKIF+o+OJJEACJEACJGADAtYl0AbBMgQS
IAESIAESIAESIIHgEKAEBocjayEBEiABEiABEiCBiCJACYyo4WKwJEACJEACJEACJBAcApTA4HBk
LSRAAiRAAiRAAiQQUQQogRE1XAyWBEiABEiABEiABIJDgBIYHI6shQRIgARIgARIgAQiigAlMKKG
i8GSAAmQAAmQAAmQQHAIUAKDw5G1kAAJkAAJkAAJkEBEEYi5devWg4iKmMGSAAmQAAmQAAmQAAkE
TIASGDBCVkACJEACJEACJEACkUeAEhh5Y8aISYAESIAESIAESCBgApTAgBGyAhIgARIgARIgARKI
PAKUwMgbM0ZMAiRAAiRAAiRAAgEToAQGjJAVkAAJkAAJkAAJkEDkEaAERt6YMWISIAESIAESIAES
CJgAJTBghKyABEiABEiABEiABCKPACUw8saMEZMACZAACZAACZBAwAQogQEjZAUkQAIkQAIkQAIk
EHkEKIGRN2aMmARIgARIgARIgAQCJkAJDBghKyABEiABEiABEiCByCNACYy8MWPEJEACJEACJEAC
JBAwAUpgwAhZAQmQAAmQAAmQAAlEHgFKoMUxa968ufz666/y5ptvSrVq1SyeZc/D/vjjD/nyyy9V
cHXq1JH06dPbM1Afo3Jqv3zEELWHz58/X27fvi0VKlSQXLlyRS0HdpwESIAErBIIiQSeOXNG8IG8
fft2uXjxoiRIkEBSpEghWbJkkY4dO0rBggWtxmeb4+wsgRs2bJDDhw8rVtmyZZMqVap45eZUWbJr
v5YtWyZXrlxRY4L3QqJEiSRlypRqrJ566ilJkiSJba7z+Apk9erVcurUKSlQoICULl3ap2Y9nUsJ
9AkjDyYBEiABCboE7ty5UwYPHiz4Qm7RooXUq1dPfeHhA/+bb76REiVKSMWKFSMOvV0l8O7du7Jg
wQK5d++eSzJeeOEFSZo0qUfGdpWlQC8Ku/ZLk0Bkp8qVKye//fab7NixQ06ePKneG7Vr15ZkyZIF
2v2IOj8UEhhRABgsCZAACdiAQFAlEELSvn17uXTpkpoyxdSpt3L9+nWZPXu2/PzzzypTkjFjRjU9
2aRJE5UxQdHkC0J56NAh2b9/vyRPnlxeeuklqVu3rjrGl3ogSKjnwIED0r17d6lZs6a8+uqrrkwa
sjSZMmVS8opjtWJXCUQ/wO+xxx6TxIkTKxYlS5aMk239/fff1TEYF0hH3rx5ZfPmzapr2nTwTz/9
JAcPHpScOXO6JP3q1avyn//8R41F06ZNlai4Z7VQX758+eK0p2VkChcurMYV7YJr0aJF1bEouFZ+
+eUXJUI3b96U1KlTq7j/9re/qdfv3Lkj+EFx+vRpuXXrlsok41xkzmJiYtQxVvplg/eYixkkEFOV
KH/++acsXbpUCWGOHDmkUqVKrn7v2rVL/WhCv3GtZ82aVYoUKeLKGJqx++c//ykPHjyQ559/Xp0L
vgsXLlT1N2zYULHGcgBIM+q9cOGCXL58WV0bGANk8vEeAefs2bNL2bJlXcytjIvZ+KPfWFqhL7h+
8R4zu768nWuUCUS8ZjzN4rXDNcQYSIAESCAUBIIqgfhS79evn4pz2LBh8txzz3mMGZkrSNjRo0el
ZcuWKms4bdo0Wblypfqi6tGjhzpXky9MnY0ZM0Z2794to0ePVmIyd+5c9cXlSz0QvOHDhyvZcS/4
4jx37pzKZJ44cULefvttKV++fJw47LYmcPny5eoLPH/+/EoC9+zZI6lSpZJGjRo9IhuQMEzFQwjB
HUWTQNSBuiBrzZo1U3Vt3bpV9u7d63GKGcL5/fffy7Vr19QUNMYIRftSRRw1atSQ8+fPy/r165VI
oG5Mf6ItSCYECNOB+LLGlPYzzzyjBEl7HSJZqFAh2bJli3pdmz7US5S3foXiTeNrnfpMoCaBqEPj
mzBhQvUeQMGxECT06emnn1YijB8+WLeJjCGuUW/sUIcmgVWrVlVLMLxJYJo0adQYQZTQDgpEMHfu
3LJkyRIlitoaOyvjYmX8kaW2kgn0dH1ZnQ5GvGY8cU2aXa/esuq+Xgs8ngRIgATsRCCoErh27VoZ
MWKE6t8HH3ygxARf9BA8rZQqVUpGjRolyDwNGTJESceiRYtUJgtZLcgfvhQxxYnsjyaBXbp0UZk5
fDEgK4UyefJkJSC+1NOpUyd58cUXvY7B9OnTVUz4cnz99dfVsXbMBGqZOsSHjCbkCpk7lFq1aqnM
6tmzZ+W7775T/wbRgNzpz9NvDNFkBVOWkABkj5CN0mTCCBrkbN++fep4TZi1L1UtIwnBmzdvnjod
IgOxwBe5xhVjry/IguF1iD6uHVwjmqTi3zB++G+r/Qr3G86TBEK6tIws+oSMqcalVatWqt96gcOY
gqU3duirLxL47LPPquzqkSNH5Mcff1SoWrdurd6DWL6BNb0Q0mLFiqnspNm44Bo0G/8MGTJYkkDE
YnR9WZVALV7U44kn3iNW4g33NcT2SYAESCAUBIIqgfpMILJtmEbSynvvvae+VDQJRJYBouipzJgx
Q2Xr3OULUqJluVAnvrz8qUdrF5kVTI1BKDAthvq1Urx4cRk7dqxLVuy2OxgCAZHANC0EGVkNcIUY
a1KGab2NGzcqocAXIQr6CMlG0UugNrWMbCmyb6tWrVKZ1saNG7umA5GJRRbxxo0bakpXKzgH0ozi
Pi2H45C1RYHIQEI3bdoUJyb9dfDf//5Xve6pNGjQQAmT1X6F4o3jS51WM4GYjke/IVLaDydks774
4gvVHDJykEBv7HCcLxKoZfmOHTsm69ati9O2JoGYMsZ7wcq4PPHEE6bjD/HyJHJWri+rEqjF640n
pujNrlfEy0ICJEACTiQQVAnEl327du1UlgZf9trUMMC5SyC+wDHdiiwQsm6QFKNiJoFYF+ZPPVpb
WhwQKWQWMT0JqcTaI2RAxo8frw61Wybw/v37SuQgBUYFPCGGvmTMUBeyf5iqx9o8TOPiyx8SgKJl
VpBNREYPX/gQEnzZ4nhkI1HMvlTNsllaO+gDZEhbH6rvpy8ZznC/cY0kEHIHYcf1q60JtJK5MmOH
vkIaUb82RY91mYgBxX1NoC8SaGVcrIy/Jwm0en1ZlUArPPWZQI2F+48WSmC430FsnwRIIFQEgiqB
CBLrnCBlEAkIIcQA2SSs44NwaZlAvN6tWzdBBgKy0qZNG5WhwtokZCRQh5F8uWcCMZXlTz0aULT1
zjvvqKlnyB++ADAFjGyanSUQ2Tiss4OQQVD1ogQ5BCestcNmCk02rKydwxghe4ii3xCC/8Y6yTVr
1qhsETKIEI0VK1ao6V1fJBDr29zXtYE7MpGYQtav5cK6OMSN6wVSevz4cSU3eomy0q9QvYGs1Gu2
Oxg/mLABBH3CdL527enXBKZLl04xN1oTqGeHeLTNE1g/CYnHGlC8zwKVQCvjYlUCtesMG1cqV66s
rjWr15fRuUbtWuGpXxNICbRyNfMYEiABJxEIugRqsoApVtwGA1kI7b5oWKSOXZCYzkPB+r45c+ao
9YFYe4RF6lh7BCnUNm6YZQKxccCferRBxBfFRx995FpfhqwXFoJjw4OdJRAbaLCJRb+zVOuTttM3
bdq0apczdqBCBJAVhOxidzDWWqG43ywa06xff/21es39noMQEJyHKXh8eSJDgrGFkPoigTjPfYcr
NpHgB4J+dzCWFyCbg3VxGBO8ho0tyECi+NKvcL5p9TtewU1/n0CInv4+gRBq992sGAdcixB+FDN2
eC9hvJFlBNc8efK41h4GkglE28hEmo2LWSYY44+lFViDCOFFVjtz5sxq7amV68voXNyNwGh3sBWe
VuIN5/XDtkmABEggVARCIoGhCpb1kgAJkAAJkAAJkAAJBIcAJTA4HFkLCZAACZAACZAACUQUAUpg
RA0XgyUBEiABEiABEiCB4BCgBAaHI2shARIgARIgARIggYgiQAmMqOFisCRAAiRAAiRAAiQQHAKU
wOBwZC0kQAIkQAIkQAIkEFEEKIERNVwMlgRIgARIgARIgASCQ4ASGByOrIUESIAESIAESIAEIooA
JTCihovBkgAJkAAJkAAJkEBwCFACg8ORtZAACZAACZAACZBARBGgBEbUcDFYEiABEiABEiABEggO
AUpgcDiyFhIgARIgARIgARKIKAJeJfC3tk9HVGfsHGyq2fvsHB5jIwESIAESIAESiDIClMB4GnBK
YDyBZjMkQAIkQAIkQAKWCMSsX7/+gacj801qY6kSHmRO4GDvf5ofxCNIgARIgARIgARIIMQESpYs
qVqIeRBbQtwWqycBEiABEiABEiABErAJgdu3b1MCbTIWjgzj+oXr8t8t/5U/UvwhDxLxd4YjB5md
8plAwoQJ5YknnpAcOXJIsmTJfD6fJ5AACZBAMAhQAoNBkXUYErhx8Ybs+mWXJNidQBIeTSgxN2NI
igRsQeB2u9tStmzZsMVy584duXjxopw/f16KFSsmSZIkCVssbJgESCB6CVACo3fsQ97zrcu3yr3D
9yTR7kQhb4sNkIAvBMItgVqsp0+fllu3bkmBAgV8CZ/HkgAJkEBQCFACg4KRlRgR2LBmgyRZlERi
bjEDyCvEXgTsIoHICO7cuTOsWUl7jQyjIQESiE8ClMD4pB1lbf3444+S9B9Jo6zX7G4kELCLBILV
Tz/9JOXLl48EbIyRBEjAYQQogQ4bUDt1hxJop9FgLHoClEBeDyRAAiQgQgnkVRAyApTAkKFlxQES
oAQGCJCnkwAJOIIAJdARw2jPTlAC7TkujCr212+Ydwfrx4DTwbwiSYAEwkWAEhgu8lHQLiUwCgY5
QrtICYzQgWPYJEACQSVACQwqTlamJ0AJ5PVgVwKUQLuODOMiARKITwKUwPikHWVtRbsE3vvznryz
9h1ZfXS1ZEqZSb588csouwLs211KoH3HhpGRAAnEHwFKoAHrs2fPyttvvy0HDhyQrl27SsuWLS2P
SPPmzWX48OHy1FNPWT7HTgc2atRIJk2aJLly5Qo4rHBJYIfFHaTxU43Vn3CWVUdWyYdbPpRZjWdJ
yiQpwxkK23YjQAnkJUECJEACfu4O3r9/v0ybNk1JUurUqaV69erSpk2bgJ+B+cILL8jIkSPjCFQ4
pOqDDz6Qu3fvSq9evSRBggSPXCft27eXo0ePxvn3GTNmqLjDEW8wL+RwSGDP5T1l46mNMqjSoDji
dujKIWm5oKUkS5RM1r28LpjdDFpdn2z7RKZvmS7DqgyTevnrxal32uZpcvHGRXm7ytvq39t+1Vaa
F24uDfI3CFr7qOjEtRPy/s/vy85zOwXZxyJ/KyL/98z/yTOZnglqu6GKP6gwLFZGCbQIioeRAAk4
moDPmUDIEWQNf5o1ayY3b96UlStXStq0aaV27doBwTKSwIAq9PPkQYMGqTv4169f37AGSOBLL70k
NWvWfOR1SuBfSKxmAiGBl25ekoQJEso/m/7TVcGY9WOU2Jz67ZQtJfDPB39K47mN5dksz8rRq0fl
00afxrkexv44VknZgIoDgipj7hcdYij6t6LSo3QPlXH85fwvMmf3HJlce3JQ26UE+vmBYnIadweH
hitrJQESMCfgswSeOHFCZf1WrVoliRMnNmzh6tWrakpx69atKjv44osvqgwZyqVLl2TKlCmybds2
SZkypfTs2VPKlSsngwcPljVr1rjq6927tzRt2jROZg3P2ZwwYYLs3btX0qdPLx07dpTnn39enYMM
VqtWrWT58uVy4cIFJXEDBw70GKOnuvr37y+bNm1yxfH5558/MjVqVQI9tYEY165dK2PGjFHtIO78
+fPLsGHD1H9DhvFavnz5VMZx9OjRcvLkSSlSpIjKvKLvXbp0cfUb09XffPONXL58Wf7zn/9Ip06d
5L///a/qe968eaVfv36qfo0TxuLrr78WjBP4IeOpjaWvHL1dYr5I4FPpn5KvD30t71Z/VwplLCQ3
796Uel/Uk26lu8n7P70fRwJ7f9Nb1p9YLzGx/3vy8SelUYFG8nKJl9V/o7hPB7de2Foq5qiohHLv
xdhrJ3l6eaP8G1I2a1nzd4iXIzac3CDI9mG6t8GcBjK17lTJkzaPOkOL0dPphTMWls8af6b6iTp+
OPaDXL9zXYpnKi5vVnhTnkz5pDoVsVfIXkF2nNsh+y/tV9nSmnn++vFx5dYVqTm7psx5YY7kT/dw
jPVlwKoBsuLwCtc/ae2aMXRvF3Hqi1ZPQADDeDIzgWGEz6ZJgARsQ8BnCfzjjz+UmNWoUUMaNmwo
2bJlk5iYv54N++DBA+nWrZt6IDokDaLx97//XclemTJl1Bq7PHnySOfOndWD0xcuXKheQ/E2HQyJ
gXxBGNu1aye7d+9W4jh16lQlS5CXnDlzKvHDFG7fvn2lRYsWUq9e3Ck6tPPnn396rWvAgAGqnUAy
gd7iTZEihWKzbNkyxQdM7t+/L1999ZWcOXNGXnnlFSVzKFrGEcy3b9+u+gzp00tg5syZ1RrGTJky
xbmwMFaQvXnz5skXX3yhuIATJHLEiBFq3MCrcuXKiimKLxzNrmJfJPDpDE9L0kRJ1dTm0CpDZcHe
BQLJavJ0Exnw3QDDTCAycQcvH5S/f/d36VKqi9TO+zATbSSBv/3xmxJMSNqcX+bI3N1z5du237rE
0awvRq/3W9FPquWqJnXz1ZVPt38ql29dltfLve461Eom8PUVr8sf9/+Qv1f4u6R+LLXM3DZTNp/Z
LLObzJYEMQmUBKLecTXGCcQL/6YvD+SBvDDvBcmdJre0L95eCqQrIEkSJolzjLcMnieGRu1GeyZw
zpw5MnPmTK+XCj6jOnTo4NPlxEygT7h4MAmQQBAJ+CyBaBvZwM8++0y2bNmihAoSASlJlSqVHDp0
SF577TUlMdp6ukWLFsm+fftURhCvLVmyxDBD500C0S7EDucmSpRIIUC27PHHH5fu3bsreRk6dKg8
88zDdVD4sEbnNMHUM8OaRm91WZFA/ZpAbKJAxhBFmw42ixd91TJ8yIoePHhQMA0NuV23bp16Dcze
fPNNWbx4sYvlW2+9pWRXL4GIF4LtqUCGx40bJ9mzZ1eckBmsVKmSOhxtgdU//vEP9d++cDS7Dn2V
wJaFW0rTeU1lSasl0mVpF+lZpqfcf3DfowRq7UPodp3fJaOqjVL/ZCSB9fLVk5eKvqRehxBW/byq
LH9puWRMkdGsG4avX7x5UbXz75b/lkQJEsm129fU+sXFLRfLY4keU+eYSeCFGxek7hd15es2X0uG
5BnUOZCy5z9/Xj5p+InkTZtXSWD13NXl5Wde9hgn6vlsx2ey8eRGOXv9rBTMUFDaFG0jVXNVVedY
kTd3hkbtWqnHL5hhOMnfTKA3EfRHANF1SmAYLgA2SQIkoAj4JYF6dpjyHDt2rCC7NWrUKMEXP0RF
E0BkBvGnRIkSSgKxgUITJvcx8CaBmEaGrOjPhbhAxpAFc9/QgNcwLYzpXfeyfv16r3VZkUCzNYFm
8b7zzjtqihb8MM0Lec6SJYuSQGRKIW4QNMj2J5984uoCptkxxa6XwIkTJ0ru3Lldx0Aav/zySzl/
/rza4IIyefJkJcjghPFCphYF8onpYExRo/jC0ew95KsEdnu2m2D6EuvoDlw+IItaLlLTvu6ZwO+O
fCezdsySE7+ekFv3bqkwimUqpsQJxUgCIUXI2KHcuX9Hyn1STtWfLVW2ON1YfnC5DFk9xPVvqzus
lseTPP5IVz/e9rHa+etesAlE2/hhJoHbz22XTks6GWJ8r9Z7UilHJSWB+tjNmN+4c0OWHVwm4zeM
l+n1pkvJzCUNJdCMoVG7lMCH9I1E0F8BRH2UQLOrmq+TAAmEikDAEojAfvjhB4GI/Pvf/1ZSgewV
pnn108Q4Dq95ywRiowmmKfW3V7GaWfNFXoKRCTSTQPTXW7Zx6dKlsmHDBjX9O378eCWB2GADCdRu
MYO1j5hKN8sE6m/pgiwtppexdhIymSRJEpWdfOONN6RUqVKWMoH6+rzJtNlF6Y8EamLUq2wvaVu0
raw7sS6OBGINXO1/1paxNcZK6SylJVniZPKvX/6l1r1hjV2gEmjWJ7yObF3DfzWU9+u8r6ZhtbLp
9CYlhtoGEXcJbLeonbxY6EWXJJ67fk7Vs7LtSkmdNLVh075KoFZJo7mNHq6VjM0gurdrhaFRu+71
WGFl12P8zQRq/dGLYCACSAm06xXCuEggOgj4LIHHjx+X2bNnq53BmJbEZgRMNT722GPy7rvvqulh
TM8WKlRIrWdDRhCZtzt37kjjxo1VBktbE4jGFyxY4JqyxYaGJk2aSJ06dVwCqUkgsmZYt1ahQgVp
27at7NmzR02f4nYueM0XCUSM3uoKRibQLF5s9MDaP+yq/te//iU3btxQsoa1gcjKgRv+PzbhYBcy
XtuxY4fqs/uaQL204bY9kM/p06ertX8Qc9zO57333nNJYIYMGZRso6A+MNXWMfnC0ewt4o8Eutfp
LoFnfj8jjf7VSKbXn652xGKzBLKH2OwRXxL444kfZfT60fKf1g/XbWrl7p93pdrn1ZQEYirXXQL7
fttXsqbKKr3K9FI7oVH6r+gv9/+8L32e66Ompo9cPaLWF2JqG2v7zCQQU8Gj142WVkVaCTbXYM0g
hBg7qz+o+4ESZfd2rTA0atcofrNrwK6vByqB6Jc2KwEJDKQwExgIPZ5LAiQQCAGfJRAC9f3336tM
3+HDhyV58uRSsmRJJX4QGhRsdoCcYc0gChg8MecAACAASURBVDZZIDuFna0XL15UU5MQGqwhxJq9
5557Th2HHbN4DVOpmKJ03x0McUKGC2vlIDIQF9yjEMVXefFWVzAkENlMb20gZkgx1vJh+hwFEvzE
E08oqdYKMoSYvtV2B2MqGGv7sLHEqN/4N2yWwZrMpEmTKsHbtWuX4qxlAjEtj93EV65ckSpVqkif
Pn3i7A4OZybQ/WJ2l0C8PnvXbJm9c7b8/sfvSnxwXzysCYwvCYQMQTq1W7/oY8ZreDoIdh+7SyB2
J+MJIid/OylPp3/atTt45taZ8v2x7+XKzStq48r/Ff8/qZyzsqrWTAJxDKbM/7X7X7Lv4j61hjJ7
quyC9ZXafQuN2jVjaNSuUT3u4xUp/x0MCQxWXymBwSLJekiABHwl4LME+toAjw8uAWT5cFuXBg38
u+FwMG8GbdYzq5lAs3r4OgkEmwAlMNhEWR8JkEAkEqAE2nzUsBsa0+643x/uo4hpXaxHQibUn0IJ
9Icaz3EaAUqg00aU/SEBEvCHACXQH2rxeI62+xqbWXA/QEy7Y1rX30IJ9Jccz3MSAUqgk0aTfSEB
EvCXACXQX3I8z5QAp4NNEfGAMBGgBIYJPJslARKwFQFKoK2Gw1nBUAKdNZ5O6g0l0Emjyb6QAAn4
S4AS6C85nmdKgBJoiogHhIkAJTBM4NksCZCArQhQAm01HM4KhhLorPF0Um8ogU4aTfaFBEjAXwKU
QH/J8TxTApRAU0Q8IEwEKIFhAs9mSYAEbEWAEmir4XBWMJRAZ42nk3pDCXTSaLIvJEAC/hKgBPpL
jueZEtiwZoMkWZREYm7FmB7LA0ggPgnYRQLxOM2dO3dK2bJl47P7bIsESIAEFAFKIC+EkBHY+vVW
uXfoniTanShkbbBiEvCHgF0kEPcBxXPDn376aX+6wXNIgARIICAClMCA8PFkbwR+Pfmr7D2wVxLu
SygJDyeUmJvMCPKKsQeBcEsgMoB4jvq5c+eUAD7++OP2AMMoSIAEoooAJTCqhjv+O3vz0k3Zv3m/
3Ep2SyRx/LfPFknAjgQSJkwoqVOnlkyZMqm/EyRIYMcwGRMJkIDDCVACHT7A7B4JkMCjBK5fvx5W
LDExMQIRTJIkCQUwrCPBxkkguglQAqN7/Nl7EiABEiABEiCBKCVACYzSgY+vbh/944qsObpbsv4a
I8nuc8orvrizHRIgARIgARJwJ3Ar4Z9y6okHUibHU/J0sozcHcxLJHQEjt/5VXbv3CVzMl+SFRl+
lctJ7oWuMdZMAiRAAiRAAiTglUC6O4mk9oUnpOXZ9FK4WFH5259J1fExD2IL2ZFAMAl8tn+trEp5
Sb7IeimY1bIuEiABEiABEiCBAAi8dCq9VLuRXlrmKE0JDIAjT/VCYNVP66RFiYNyhRlAXickQAIk
QAIkYBsCyAjO2ZZPKhZ/lhJom1FxWCB4bFzF8nsc1it2hwRIgARIgAQin8C6HwtJyZIlKYGRP5T2
7AEl0J7jwqhIgARIgARIgBLIayCkBCiBIcXLykmABEiABEjAbwKUQL/R8UQrBCiBVijxGBIgARIg
ARKIfwKUwPhnHlUtUgKjarjZWRIgARIggQgiQAmMoMGKxFApgZE4aoyZBEiABEggGghQAqNhlMPY
R0pgGOGzaRIgARIgARLwQoASyMsjpAQogSHFy8pJgARIgARIwG8CUSGB7du3l6NHjypIqVOnlmef
fVZ69+4tqVKlMgTXvHlzGT58uDz11FM+g9Wf+8ILL8jIkSP9qsfnhm16gmUJvP+nPPj7IpHPNojc
vCNSs6DEfPiSyN+Mx8im3WVYJEACJEACJBAxBKJGAl966SWpWbOmnDt3ToYMGSL58+eX/v37h3Sg
KIEiViXwwYjlIjPWiiztITEZH5cHHf8hcuuOxKzuF9IxYuUkQAIkQAIkEK0Eok4CMdBffPGFrFu3
Tj788ENp1KiRtGzZUr755hu5fPmy/Oc//xF9Nu/06dMyYcIE2bt3r6RPn146duwozz//vLpevJ2L
NtasWeO6rpB5vHPnjvzyyy8qO6iViRMnSsKECeW1115z5DVoWQKzvinyZm2J6fmQ7YN9Z0UKDhXZ
P1xiCvzNkWzYKRIgARIgARIIJ4Gok0AtE5gvXz55/fXXlchlzpxZ3n77bcmUKZMaC00CkS3EVHK5
cuWkXbt2snv3bhk8eLBMnTpVcL63czGV7J4JvHr1qrRo0ULmz5+vpqXv3r0rTZo0UZJZoECBcF4H
IWvbkgReviEP0vcV2fimxJTN7YrlQYqeIrPaS0zzUiGLjxWTAAmQAAmQQLQSiBoJ1NYEYh1gqVKl
pG/fvmpNIERuwIABUqZMGdc1oEkg/gHHLVmyRBIlSqReHzNmjDz++OPSvXt3r+caSSDOR1slSpSQ
Zs2ayerVq2XWrFnyj3/ETn06tFiSwKOX5EHugSJ7h0rM00/+JYFZYrODwxpIzCsVHEqH3SIBEiAB
EiCB8BGIGgnU1gS6o4YEYko2d+6/MlCaBF66dElmzpwpn3/+ues0CBuEEplDb+d6kkBI0aeffiqf
fPKJvPHGG1KsWDFBbE4tliSQmUCnDj/7RQIkQAIkYGMClMBYCZw0aZLkypXLr0ygp3Mhgcj2jRgx
Is7u4Pv370vTpk3lrbfeUlnBefPmSYYMGWx8iQQWmiUJjG3iAdcEBgaaZ5MACZAACZCAjwQogV4k
EGsCsRawQoUK0rZtW9mzZ48MGjRIPvjgA7W7GJlAbxLYqVMnteavTp06EhMT4xqaadOmqY0oyD7i
fCcXyxKo3x0ce1uYBy/HZl9jbxUT8wN3Bzv5+mDfSIAESIAEwkeAEmgicidPnlQbN/bt26cydh06
dJDq1aurETOTwLVr18rkyZMF08q9evVSGUCU48ePK6lEJrB27drhG/14aNmqBAruE/jmV3HvE/hR
G94nMB7GiE2QAAmQAAlEJ4GokEC7De3BgwfVxpJ///vfkixZMruFF9R4LEtgUFtlZSRAAiRAAiRA
AmYEKIFmhIL8+p9//ql2GGO3MTaGOL1QAp0+wuwfCZAACZBApBKgBMbjyN26dUtq1aolOXPmVFPM
Tt4QomGlBMbjBcamSIAESIAESMAHApRAH2DxUN8JUAJ9Z8YzSIAESIAESCA+CFAC44NyFLdBCYzi
wWfXSYAESIAEbE2AEmjr4Yn84CiBkT+G7AEJkAAJkIAzCVACnTmutukVJdA2Q8FASIAESIAESCAO
AUogL4iQEqAEhhQvKycBEiABEiABvwlQAv1GxxOtEKAEWqHEY0iABEiABEgg/glQAuOfeVS1+N1P
66RliYNyJcm9qOo3O0sCJEACJEACdiaQ7k4imbMtn1Qs/qwKM+ZBbLFzwIwt8gh8tn+trEp5Sb7I
einygmfEJEACJEACJOBQAm1PZZDnr6eTljlLUwIdOsZh79a+WxfkyC/7ZF7my/J1xl/lMjOCYR8T
BkACJEACJBC9BJABrHPhCWlxJp3kLVpIckhKSmD0Xg6h7/mJO7/K90d3SZarMZL8foLQN8gWSIAE
SIAESIAEDAncSHhfzjwh8lzOglIgaXq5ffs2JZDXCgmQAAmQAAmQAAlEGwFKYLSNOPtLAiRAAiRA
AiRAArEEKIG8DEJKALeJYSEBEiABEiABErAXgfLly1MC7TUkzosGEogLjYUESIAESIAESMAeBLTv
ZmYC7TEejo2CEujYoWXHSIAESIAEIpQAJTBCBy7SwnaqBBYvXlz69+8vbdq0CduQnDt3Tp588km5
ePGipE+fPmxxsGESIAESIIHIIkAJjKzxithotQutbNmy8sorr6g/Tih2lECnMXbCdcI+kAAJkIBd
COCZIDExMSocSqBdRsXhcdg9E1iqVCnp0aOHdOjQweNIGB1jRwl0+KXE7pEACZAACfhJAAKoSSBE
kBLoJ0ie5hsBSqBvvHw5mtPBvtDisSRAAiQQvQT+/PNPV+cTJEhACYzeSyF+e+5pOhiZtKpVq8rm
zZtl+/btkj17dpk1a5asX79eJk6cKL///ru0aNFCPvzwQ8EFi4Jz6tatK+vWrZOdO3dK3rx5ZcqU
Ka7dxxcuXJDevXvLd999p1LetWvXVnWlTZvWdX69evXUxb9161a5fv16HBhlypSRn376Kc6/tWzZ
UubNm+f6N+0YxNKgQQNV15YtW9TaPMRSs2ZNw7Zmzpwp9evXl4EDB8rixYvl2rVrUqFCBZk6dark
yJFDnYPXly1bpmLHv3Xs2FEdr6Xvz549K506dZK1a9dK1qxZpXv37iqLqa0JdJ8ONovx9OnTqj4w
R32vvvqqvPbaa1xjGL9vEbZGAiRAAiEnQAkMOWI2YETAmwRChBYsWCAFChRQ8oH/D+kaM2aMXL58
WSpVqiTvv/++vPjiiy6xOnHihHz11VdSokQJmT59uowaNUoOHTokGTJkkCpVqkiKFCkEwnX//n1p
3769JEuWTImVJpHnz5+XhQsXCmQuYcKEEsh08NWrV2X+/PlSuHBhJZuIFdk5SBsEzL2tpk2bqnsy
QfzSpUsnw4cPl++//15JpCa6iBOx79q1S5o3by7Dhg2T1q1bq/jBI2PGjDJt2jQlyWCFc71JoLcY
IaHZsmVTcaO+Vq1ayaZNmyiBfCuTAAmQgMMIUAIdNqCR0h1vEghJ69Onj+rKDz/8oDKDkBGIHAp2
3kJSRo8e7ZI4ZAIhflopWLCgyv5Vr15d8uTJI0ePHpWcOXOql3fv3i1FihSRM2fOqEwdxAxCieya
VgKRwHbt2knfvn1VVZAtZBxPnTolWbJkeaQt/Dv6guxb5syZ1Tl4U6ZJk0Zl4hCne4GcbdiwQebO
nSuHDx9WmU+IJUQQZdWqVarf3iTQU4y3bt2SfPnyxRE+CGm1atUogZHy5mKcJEACJGCRACXQIige
FlwC3iRQf4sVTMNCaPRTtNhJnDJlSpk0aZJLAjH9qd9hjClUZAUhLzj/7t27rg4g64ZM4M8//yyl
S5dWYtavXz9p27ZtUCRQH7/W1sGDB5WsubeFKWxk8ozKkiVL1NQysooQ3gMHDsiNGzfUobjRNiRx
zZo1gqlsPZ9jx45Jrly5vEqgpxgho2AH6daKe33BvRJYGwmQAAmQQLgIUALDRT7K2w22BEKERo4c
6aLqngk8fvy4Wl+IYpQJdL+3H+SwW7duXncHGx3jvjvYSAL1bWEaG8KGdYuYCnYvyPAhg4gpcQgt
5Hfy5MkqCwhBNsoEumfujNYEepJAtM9MYJS/Odl9EiCBqCFACYyaobZXR4MtgSdPnnStCfzoo4/U
ujoIEtYEVq5cWVKlSiUzZsyQe/fuqTWBSZMmleXLlysoRrd1adSokZpGHjt2rCRKlMgQntExvkog
Km7SpImKa8KECWojxp49e9TUNkQPmz5y586tpnjLlSsn27ZtU2v+MI2tbVbBGj5MJWNNodEaPl8k
ENlKtIMNKFwTaK/3DKMhARIggWAToAQGmyjrs0Qg2BJYp06dOLuDITAVK1ZUsWBTBtYYaruDa9Wq
pTZsaE/TMJJAxIfpZWwuKVmy5CO7g1Gv0TH+SCDEDdKKjS3I/GFDyVtvvSWQTJTx48erP1hfiClu
SN3GjRtdMbnv5rWyO9jblDWEunPnzqp/yEJiN/Lrr7+udi5DpllIgARIgAScQYAS6IxxjLheBPM+
gXa4QXPEDYAPASNjis04V65c8eEsHkoCJEACJGB3ApRAu4+QQ+OjBNp3YHH/Q0yB496GR44cUQKI
rCpuQcNCAiRAAiTgHAKUQOeMZUT1hBJo3+HCvRgxpbxixQp1Wx7cxxD3aMSOahYSIAESIAHnEKAE
OmcsI6onwZTAiOo4gyUBEiABEiABmxCgBNpkIKItDEpgtI04+0sCJEACJGA3ApRAu41IlMRDCYyS
gWY3SYAESIAEbEuAEmjboXF2YJRAZ48ve0cCJEACJGB/ApRA+4+RIyOkBDpyWNkpEiABEiCBCCJA
CYygwXJSqJRAJ40m+0ICJEACJBCJBCiBkThqDoiZEuiAQWQXSIAESIAEIpoAJTCihy9yg6cERu7Y
MXISIAESIAFnEKAEOmMcI64XlMCIGzIGTAIkQAIk4DAClECHDWikdIcSGCkjxThJgARIgAScSoAS
6NSRtXm/KIE2HyCGRwIkQAIk4HgClEDHD7E9O0gJtOe4MCoSIAESIIHoIUAJjJ6xtlVPKYG2Gg4G
QwIkQAIkEIUEKIFROOh26DIl0A6jwBhIgARIgASimQAlMJpHP4x9pwSGET6bJgESIAESIIFYApRA
XgZhIUAJDAt2NkoCJEACJEACLgKUQF4MYSFACQwLdjZKAiRAAiRAApRAXgPhJUAJDC9/tk4CJEAC
JEACzATyGggLAUpgWLCzURIgARIgARJgJpDXQHgJxIcEFi9eXPr37y9t2rSx1Nlz587Jk08+KRcv
XpT06dNbOkd/0N27d+WVV16Rr776SnLkyCG7d+/2uQ6e4HwCvl6XZkTM6itbtqy6LvEn0GLWVqD1
+3u+v+89u/bHXw48jwR8JcBMoK/EeHxQCBhJ4MSJE+XIkSMyZcoU6dWrl2TLlk1JnL/F1w/4QCVw
wYIFMmTIENm4caOkTp3a37B5ns0IBFOi0DVfr0szHGb1BTN+s7bMYg3V6/6+9+zan1BxYr0k4E6A
EshrIiwEjCSwRYsW0rBhQ3nppZekTJkyMn78eKlYsaLf8fn6AR+oBA4aNEhOnz4ts2bN8jvmSDyx
VKlS0qNHD+nQoUMkhh/SmI3Y+HpdmgVoVl84JbB27dry1FNPyaRJk1Q38N/ffvut+v9JkyZVmfdy
5cpJ7969Baz8LVbee/ExFlWqVFHvhXv37snHH38s33333SP9TpYsmeTNm1fefPNN9VmnFT0b7d9q
1aol33zzTZw68N/4d62gXy1btvTpB/OmTZtk5MiRgs/hmzdvqngQy2uvvSaIz73oY/MUv69jd+DA
AcUAMSCTi+t0wIABrs98p32ueLo2fOUW7OMpgcEmyvosETCSwJw5c8qqVatUBjBNmjRqWjZ58uSW
6jM6yOzL0f2cQCWwZ8+e6sPsww8/9DvmSDzRaR/WwRyD+BAPs+vcbhKoSeGdO3fk6NGjSpYgiV9+
+aU0adLEL/xW3nvxMRbeJFDrN6Trk08+UeK7c+dOKVy4sEvy9MJsJGJbtmyRzJkzy/bt2yVhwoTq
EF8lEBLZuHFjJaudO3eWrFmzqhmYOXPmqCx18+bNDSXQLH5fBw7i+dxzz8no0aPVzMlPP/2kroNl
y5a5+uWkH5eUQF+vEB7vaAKaBOKXco0aNTz2NUuWLHLq1CnD1/Hh9dlnn0n16tXV6zgOAnn16lV5
4okn1AdagwYN1C9NfHgi64Cp5po1a6rjz549K506dZK1a9eqD8Lu3burD0YrawJRd7169VTdW7du
levXr8eJceDAgTJixAjTGC5cuKC+DMAhJiZGZUowLZ42bVpV32+//SaDBw+WJUuWyK+//qo+oN97
7z1JkSKF1+vDPb5hw4bJu+++KxMmTHCtkezYsaP68Efb2heKp0rff/99FRfiLVGihEyePFn9jQzE
vHnzXKchg4sPc/f2Z86cKfXr1xdwWbx4sVy7dk0qVKggU6dOVesnUfA6vgDAAf+G+HA8/hsFdVat
WlU2b96svgSzZ8+usq7r169Xsf3++++CbDIkPEGCBOocjIu3No3iRJ/0xV2iPLFwZ+eNjbfr0ixm
93bQh7p168q6deuUVODLFdd5+fLl1aHu8QdyzemFEzLTqlUrlfWCwBldk0aZQCPRwVgjQ3jy5EnX
eOv76S1m7brRjtfee/rz42ssrEgg4kL2JUmSJDJ79mzFEMWdlfs443UII6a+kfnU1ni6S6A3Vg8e
PJDcuXNLnTp1ZNq0aV4/Q/QvusfmHv+ZM2fkmWeesfz5cv78ecmUKZN6H+Oa8uW9o//cjaTPFXwu
GWWJLQ9CiA5kJjBEYFmtdwLumcDPP/9cli9froRi+PDhcuPGDSUt3ooVCYQQzp8/X314QhTwBY6M
H8SiUqVKkjFjRvVhCIHAFwVk0aoE4oNs4cKFauoaEqW9wfWZQHzAeYsBXxr48sSH2f3796V9+/Zq
Okb7NdyoUSO5cuWKfPTRRyoDgC9b/I0vPm8F7brHB9lr2rSp/Pzzz0qk3njjDdmxY4f6MPZWMG0D
fqtXr5aSJUuqc9DvcePGqdM8ZVjc20fbt2/fVuKXLl06Nc7ff/+9Yq5JG+oDh127dinhhby2bt1a
tYM+QR7xJVigQAE1dYX/j3EbM2aMXL58WY0pxvjFF19U55i1acTJnYVeosxYuJ/riY23a8IsZvc2
0IcTJ06oDUkQ8+nTp8uoUaPk0KFDkiFDhkckMJBrTpNA/PCCyKJ/H3zwgccfEVYlENdBtWrVZN++
fWr62L2YxWz03gvHWFiRQC0T2LdvX9m7d6/ky5dPhWpFAsG7YMGC0q9fPzl48KCkTJnykUygN1Zo
r1ChQmrdMq5rq0Ufm6f4ffl8gYziPYxYMCWM6wrLA/TFaZ8rzARavdp4XFQQcJfAdu3aqbUgyMw9
//zzam2ItwwhIFmRQNSLD1sUfPEiw4aMIWQEGROICkQQBVPR+HKzKoEQDWQdtOJJAj3F8Mcff0ie
PHnUlBimwlGwo7hIkSKCX9aYWkZGDB/2iNWXgg9V9/hw/tChQ9W0D0QYGTlk1swK4kNM+OLA31a/
XPXta1larJmExKLgFyim/ZHJM6oXMrdhwwaZO3euOh59giT36dNH/fcPP/yg4ofAa1ko7ARHNhhT
TFba9MRJ30e9BJqxsMrG0zWBL0fE7wsnLRMI8dMKRAEZZkz36eNH5jeQa05rC2PSpUsX9QXurViV
QFzj+fPnV9eClsHU6jWLGRn+QCQwmGPhiYX7ej9kASHtyGppxWhN4KJFi9TULQpehxi98847akyx
LhA/pPSZQDNW+BEDGcGPBlxnVouV+H39fME1jvcpMsDHjx9X/cBGQPwIQvEkgU75XLHKPtTHMRMY
asKs35CAJoHaVJ8nTL/88otrzYz7MVYkUH+LGIgfsmz4wsEHED6A9dO4x44dk1y5clmWQPwab9u2
rSssTxLoLQZIJ2RPK1qMyNbh/0Ny8LoZJ3c2+LJ2jw/HQP4glvgSWbNmjeWrc+nSpSqDd+nSJSla
tKjavV2sWDGvH9b69jFViSydUcFUN7JKyNjiSwFfVMgEo0AIIAYo7mvfMO0MfvoxxBQZsiNYW2Sl
TU+c9HG6T6d6Y+HePyvr0PTXJZYomHEyGmtce/pbwCBTjKwgJEEfP8Y8kGsOvHAN4RZK4A/W3opV
CdQygfv371cZIn0xi7l06dIBSaCn96c/Y+GJhZ4DfmS++uqrSsTww0pbimE1E4hlJnhPQALxXsFs
gbYxxIwVxivQTKCn+AP5fMGyF0yNI7uPH+MQVU/vHad8rlj+8A3xgZTAEANm9cYE9JlAZGyeffZZ
tUYPX9x4k2P3mlnBNArWx0EgULZt26amK/VrAj19wEOq3DOB2heR1Uyg+z0IfZVATIEiK4NfwVjf
hhLMTKB7fHizYy0Qvgjw5YMvk5dfftkMc5zXUQcyiVg/ifHCxh18CXfr1i3O7mB3YcMXHgQb65Uw
FexekJHF+k9M72JaEDFi3SEyTpANfyTQrE2jOo1geNpYYcTC/XwrbPQSiAyRN05G8WnrGrHbUytm
mUB/rzm0hQwjsjf40YQlHMjmWpEfHONJdLAmcMWKFUqM3H/waNktTzFbzQTGx1hY5YD1vXjv40cP
srXe2Gh1aplAvG9RXnjhBXn88cfVZ4YmgWassPQDawLxAxjT+FaL+7gZxR+MzxcwwWcSZlisjJfZ
e9zOnytW2Yf6OEpgqAmzfkMCeglEBghigakPrDODFEIAzAqmBbB+7NNPP1VrxZAJwboUKxIIAcTG
BExNIsOFKUUs0IZ8xpcEIobKlStLqlSpZMaMGWqBPaY7sTYGX64oEFz0Tb8mEF96VtYEuksgskKQ
KqwHxB/cjgfTrdruRE+8V65cqdYD4sMZU0ioA9P2WKsIWUMmAh/eY8eOlUSJEhkKG/4ROz/RR2xO
QRZ3z549au0a6oNQ4ssJWQDcMgRCjy829NVfCTRr87HHHrN0zz69BJqxcGdohY1eAnFNeOOEmN0L
xAwbKrQ1gbhWMNaHDx82XBMYyDWnyT3WaWI6GNcR5E1bUuEem7dMIDLckBbslMV6XW+7g81itjId
HB9jYVUCcRwEEOuHMTMB+fclE4jzseYT710shXjrrbdct4gxY4XdwbjGkM2HfOPHF5Y54DMY2X2z
3cFaH93j9+XzBTMxXbt2VT8okLHGD2J8DuDHJH5gIFttZbzM3uN2/lwx+36Lr9cpgfFFmu3EIaCX
QMgKFrBjfVGzZs3UH/cdmkb48AWCe9Nhdy4EAh8g+GNVAvFBBJnB1Io/u4MDzQTiCx9Ta1jjpu0O
xhQPvhC1J5ZAALE+ElOQmCKF+EKirOwO1scHicOHKjKAmA5CQUbhiy++UBszvNWHW3lgehWbV8AM
a7ewtlBbq4SxhIDjSwmZWG13sDsfiDa+KCAr+IWOLzB8eSEuFNwXEn8wfvhigHwh3kAk0KxNs9ur
IC69BJqxcL9OrbBxl0CzmI0kEBle/e5grKfU7rHpnskM5Jpz54X1tvjBgusX7yErEqjdJxBCC8nH
lL/ZfQLNYrYigfExFr5IIJYxIOuL9yGE2lcJRFv47MB7Ez+etRvrm7HCefixi3bB5NatW2pWBOtp
casdT/cJdN/VrY8fnwm+fr5g8xt+7OPzBz/mMbOD6WCs0USxMl44zuz9YtfPFbsoASXQLiMRZXHE
x2Pjogwpu0sCJEACJEACPhGgBPqEiwcHiwAlMFgkWQ8JkAAJkAAJ+EeAEugfN54VIAE7S6C2S9io
i1izhxtUh7MEO75g1xdONmybBEiAM59AlgAAIABJREFUBEjAOgFKoHVWPDKIBOwsgUHsJqsiARIg
ARIgAdsSoATadmicHRgl0Nnjy96RAAmQAAnYnwAl0P5j5MgIKYGOHFZ2igRIgARIIIIIUAIjaLCc
FCol0Emjyb6QAAmQAAlEIgFKYCSOmgNipgQ6YBDZBRIgARIggYgmQAmM6OGL3OApgZE7doycBEiA
BEjAGQQogc4Yx4jrBSUw4oaMAZMACZAACTiMACXQYQMaKd2hBEbKSDFOEiABEiABpxKgBDp1ZG3e
L0qgzQeI4ZEACZAACTieACXQ8UNszw5SAu05LoyKBEiABEggeghQAqNnrG3VU0qgrYaDwZAACZAA
CUQhAUpgFA66HbpMCbTDKDAGEiABEiCBaCZACYzm0Q9j3ymBYYTPpkmABEiABEgglgAlkJdBWAhQ
AsOCnY2SAAmQAAmQgIsAJZAXQ1gIUALDgp2NkgAJkAAJkAAlkNdAeAlQAsPLn62TAAmQAAmQADOB
vAbCQoASGBbsbJQESIAESIAEmAnkNRBeApTA8PJn6yRAAiRAAiTATCCvgbAQoASGBTsbJQESIAES
IAFmAnkNhJeAJwk8d+6cPPnkk3Lx4kVJnz69aZB3796VV155Rb766ivJkSOH7N692/Sc+Dhg9erV
8tZbb8lPP/2kmqtbt668/PLL0qxZs/honm2QAAmQAAmQgCkBZgJNEfGAUBAIlgQuWLBAhgwZIhs3
bpTUqVOHIlS/6ixbtqySwEaNGqnz161bp2R1//79EhMT41edPIkESIAESIAEgkmAEhhMmqzLMoFg
SeCgQYPk9OnTMmvWLMtt6w8sVaqU9OjRQzp06ODX+UYnbd++XWrUqCFnz56VxIkTuw7JlSuXzJgx
Q73GQgIkQAIkQALhJkAJDPcIRGn7wZLAnj17CqaEP/zwQ79IhkICBw8eLAcOHJB58+bFialLly6S
IEECmT59ul+x8iQSIAESIAESCCYBSmAwabIuywQ0CUS2rFOnTrJ27VrJmjWrdO/eXWXmtDWB169f
l4EDB8rixYvl2rVrUqFCBZk6dapa/1e/fn1ZtmyZq00cN2LEiEdieP/992XixIly4cIFKVGihEye
PFn93bJlyziiVqZMGbWGD8f17t1bvvvuOzV1W7t2bXV+2rRpVd3FixdXa/wwxbtz507JmzevTJky
RcqXL69eR6avatWqajpYXz766CMlq8gUoowZM0Y+/vhjOXTokGVuPJAESIAESIAEgkWAEhgskqzH
JwKaBFaqVEkyZswo06ZNk99//12J2ZYtW1wS2LRpU7l9+7YSv3Tp0snw4cPl+++/V8cgqwZhvHfv
nsdMIDJyhQsXFmzUKFmypOzYsUMWLlwo48aNU/EaZQKrVKkiKVKkkJkzZ8r9+/elffv2kixZMpdw
QgJPnDihNqNAJpHZGzVqlJK5DBkySMGCBaVv375qDaC+LFq0SLp27Srnz5+nBPp0tfBgEiABEiCB
UBCgBIaCKus0JQAJzJQpk8qiQYoggiirVq2S6tWrKwmE/GXLlk2t+cucObN6HRdsmjRpZP369VKk
SBFTCTx69Kg6DhtH8Ld7cZfAI0eOSJ48eQTn5cyZUx2OHcc498yZM2rnspYJhPhpBeKH7GHnzp0t
S6ApJB5AAiRAAiRAAiEkQAkMIVxW7ZkAJBAZvHr16gmmfLVy7NgxwQYKSOC+ffsEmUKjsmTJEmnQ
oIGpBOLcpUuXqkzipUuXpGjRotKrVy8pVqyYqtZdAtesWaMkFOsMtQIZRSbw559/ltKlSysJRAZS
n+nD1DSygshU4vxq1aqZTgfz+iABEiABEiCBcBKgBIaTfhS37SkTiKleCBQk8ObNm0oIsUYPU8FG
xWw6WH8OLvY5c+aodYdYi5g8eXIldd26dXPtDtYygcePH5fs2bOr040ygZDXkSNHuqrXZwKxY/ng
wYOGG0OwxtDfTSxRfLmw6yRAAiRAAiEgQAkMAVRWaU5AWxOIjR6Y6kWmDmsCW7VqJZs2bXKtCWzS
pInKGE6YMEFtHNmzZ49afzd37lx57LHHTDOBK1euVOsBcaNmTC3jPGxEuXLliqRMmVLdxw/Tv2PH
jpVEiRKpwCtXriypUqVSt3NB21gTmDRpUlm+fLl6HZnAkydPutYEYsMHMoCHDx9WawK3bt2qNpNA
NLU6cV7u3LmVANasWVPVw40h5tcJjyABEiABEggdAUpg6NiyZi8ENAnEej9IGdb4Ge0OhhhCsLAJ
A2sHsclDfxNms0zgnTt3ZNKkSWqTB9rKnz+/DB06VBo3bqyiQxyY1sWmDmwcwe5gPLWkT58+rt3B
tWrVUruDtSeYQALr1KkTZ3cwdiBXrFjR1WPcLHrAgAHSsGFD9W/oH0QUN4vGhhZKIN8eJEACJEAC
4SZACQz3CERp+5H87GBIYP/+/aVNmzYeRw/T2pBA7bFxmD7GDalffPHFKB1xdpsESIAESMBuBCiB
dhuRKInH6RIYJcPIbpIACZAACUQwAUpgBA9eJIdOCYzk0WPsJEACJEACTiBACXTCKEZgHyJZAiMQ
N0MmARIgARIggUcIUAJ5UYSFACUwLNjZKAmQAAmQAAm4CFACeTGEhQAlMCzY2SgJkAAJkAAJUAJ5
DYSXgBMkEPcfxO1qtB3A4SXK1kNJoG7duuoWP82aNQtlM6ybBEiABOKVADOB8YqbjWkEwimBuIcf
7g2of+ybPyODevT3LPSnjnCdEywG4Yo/vttdt26dul5wn0c89YWFBEiABJxAgBLohFGMwD6EUwJ9
xeX+fGGcv337dqlRo4Z6KkjixIlVlVWqVHE9weTjjz9WN5tGOXDggLz55pvqxtR4JrF2I2nt5tJG
9fsaYyQdb+f+ehpD8MUjDPEUGYw7CwmQAAk4gQAl0AmjGIF9iHQJHDx4sJK7efPmueh7Eoi8efPK
c889J6NHj5bUqVOr6WM8xWTZsmXqXDtLUSguLTv315sEdunSRT3tZfr06aHAwjpJgARIIN4JUALj
HTkbBIFgSSCe3oH1Wpiu27lzp0C4pkyZIuXLl1eg8Tqe1oH28ExfPD4OAqafDsYxDRo0UMds2bJF
nnzySVUHnvHbsmXLOKJXpkwZJXHIBlWtWlVNB2vFSCDwqLtMmTKpzCHacS+e6r9w4YL07t3b9eg6
PIsYj65Lmzatq19m/fb2uvt0sDcGaND98X6vvvqqvPbaa65nPLv3C4/RQ7zoR4kSJWTy5Mnqb0/9
NRqn+vXry8CBA2Xx4sVy7do1wXOm8YzpHDlyqObwOkQa07P4t44dO6rjtela1Ikx2rx5s+KfPXt2
mTVrlnqEH2LDIwlbtGihnuesPcrPmwTiGdE4FnWxkAAJkIATCFACnTCKEdiHYErgiRMn1LOFIRnI
0owaNUo9CzhDhgxKvCBiCxcuFAhcwoQJ1XSsuwRevXpV5s+fr55NDEGAxOAZwhAKo8xVwYIFpW/f
vnHWFRoJxIMHD6RAgQJSqFAhNSWMeJImTRpnxIzqR10pUqRQ0nr//n1p3769JEuWzJU9RD1m/fb2
uq8MIGDZsmVTXCBPrVq1kk2bNhlKIDKk4IiNM3ge844dOxT/cePGqX4b9ddonJo2bSq3b99W4pcu
XTr1DGk8jg+irkkb6gOfXbt2SfPmzWXYsGHSunVrlyhDHhcsWKDGANKK/w8RHTNmjFy+fFkqVaqk
+qQ9zs+bBC5atEi6du2qricWEiABEnACAUqgE0YxAvsQTAlExgvipxUIGrJonTt3VtKFL3hkiLRi
JEDt2rVTUocCIUTG7dSpU5IlSxbLEuhpGJBFw1Twt99+K8ePH1f14dnDkBwjKTpy5IjkyZNHjh49
Kjlz5lTH7N69W4oUKSJnzpxRmUotA+qt3964+MLg1q1bki9fvjjCBxmrVq2aoQQibsS6ceNG9bd7
8SSB+nECe0gn2GXOnFlVgQ+rNGnSqEyeUb2QuQ0bNsjcuXNdEgh57tOnj/rvH374QWUGIbEQbBQ8
/xntYHzMCiXQjBBfJwESiDQClMBIGzGHxBtMCezRo0ecjBymCZEVROYIstSvXz9p27ati5yRAEHK
IAQoyD4h63bw4EE1vWwkLdWrV1cSpJ8OtjI0v/32m8yePVtlpVatWqU2k7jXv2bNGkH92ESiFS2m
n3/+WUqXLq36ZdZvb6/7wgAiBqaQJ60cO3ZMbZS4ePGipE+f/pGuL126VGXwLl26JEWLFpVevXpJ
sWLF1HGeJFA/TpjeR5bOqCxZskRN3yNzC3lD5vHGjRvqUCwDgCSigJF+XDGND67Xr193VYuMcMqU
KdUSAbPC6WAzQnydBEgg0ghQAiNtxBwSbzAlEGv+Ro4c6SLjngnUiwAO8kWAIIGQrm7dukmHDh1c
bQwaNEhJon5jiC9Dg0wf7juHDKV7/VomEFlDrGNDMcoEmvXb2+u+MED7vmQC9RzwATNnzhzp3r27
2kmdPHlyQ57uwoapbEgm1hRiKti9YEoWWVpM70LGIXJYd4gsoHbfxmBLIDaGYHkA1gWykAAJkIAT
CFACnTCKEdiHYErgyZMnXWsCka1BBvDw4cOuNYGBSmCjRo3U9OzYsWMlUaJEijY2mWCzBsRG+zej
YUAWDevIMD2N7CTWskFUIJWYHkZmyqj+ypUrS6pUqdQtSe7du6fWBGIt4fLly1UzEByzfnt73RcJ
hAiXK1dObb6wsiZw5cqVaj0gJBdTrehvp06d5MqVK0rWjPrrLmzoY5MmTVTfJ0yYIFmzZpU9e/ao
aX/UB+65c+dW2VTEtm3bNrXWD1PloZJAtAcBxIYhFhIgARJwAgFKoBNGMQL7EEwJrFOnTpzdwRAV
7R58RnLhqwAhVkwbYrMJNjpokqHd769hw4ZeRwA7WJGlwoYGbGJAVg3TwViHiGJUPzalYC0b7jWI
7FOtWrXUhhVt6hX9Muu3t9d9ZQChxBpLxIoMHHbivv7662rXLmRVX+7cuaOmV7GpBRKcP39+GTp0
qDRu3Nhjf43GCdPPEHps+kHmD5tN9DfnHj9+vOAP1nBCsNEnrEMMhQRiihlSi5tF6zelROBbjyGT
AAmQgIsAJZAXQ1gIBFMC3TN98dUhbI4YMGBAWB4bZyRN+n6bvR4oI2QksYYS2b1oKJhax3IAbRdx
NPSZfSQBEnA+AUqg88fYlj10ggSGE6yZ5Jm97mvsWPuIaW9MhWLNIgQQ2dZp06b5WhWPJwESIAES
sAkBSqBNBiLawqAEBjbiZpJn9rqvreOeetjcsWLFCnV7FdzeBvfawy5qFhIgARIggcgkQAmMzHGL
+KiDJYERD4IdIAESIAESIIEwEaAEhgl8tDdLCYz2K4D9JwESIAESCDcBSmC4RyBK26cERunAs9sk
QAIkQAK2IUAJtM1QRFcgdpBA99uk4AkduBUMbkmCe+LhBs2+FF/X4eE2MLivnaenbpi1HWi8ZvXz
9egggHs64tY72q118LhB3A6nWbNm0QGAvSSBKCZACYziwQ9n1+0ogXj6xJAhQ9S95lKnTu0znviW
wEDj9bmDPMGRBPBjSH//RTyyDz+GcE9E3KOShQRIwLkEKIHOHVtb98yOEohHweHmxrNmzfKLXXxL
YKDx+tVJG5xk9OxhG4QV8hBC0e/t27dLjRo11BNYEidO7OoDHtmHp9XgNRYSIAHnEqAEOndsbd0z
O0pgz549BVOs/j4bNr4lMNB4bX2BeAkuFDIUCSxC0e/BgwfLgQMHHnkGNp6TjCejTJ8+PRLQMEYS
IAE/CVAC/QTH0wIjECwJxCPi8Di1CxcuqEeH4fFs+Bvl+vXrMnDgQFm8eLF6vFmFChVk6tSpar0f
in5NYP369QWPd9MKzhsxYkScTuL5tZ999pl63i/KqVOn1LNx8diyJ554Qj3Pt0GDBurRanhEHNb7
TZkyxfWsWWRb8AzdtWvXqmfh4r57PXr0sLQmEHXjqRWoG88tRt/0RYvXLAZwwnOMtcfR4fnH4Jc2
bVpV3W+//SYQgyVLlsivv/4qzZs3l/fee0/dG9BbcY9v2LBh8u6776rn/uLG0ih41BxuNI22EyZM
6LU+T+OK5wPjxtVaKVOmjFrL5t4+HlmHMfU2/tqYY8oT1wTiw/HaFCjqrFq1qmzevFmQMcuePbvK
EuMRcmCGx9q1aNFC/WjQHiVnds0ZxYk+acXXfpuNJ9rDGj9M8e7cuVPwHGhck+XLl1dNItOHPmI6
WF/wDG70C/1mIQEScC4BSqBzx9bWPQuGBCKDgefJYmE7num7Y8cOWbhwoYwbN071HTc0vn37thK/
dOnSqefQ4lFvEDR8abtvDIGQ3bt3z2Mm0IoEQgjnz5+v4oIo4EsdG0AgFpUqVZKMGTOqp2xAIPDl
j1isbAzBlzmen4v+QXwgUUbx4jhvMVSpUkUJHSQJzzFu3769uuGzJsCNGjVSj4KDBGTOnFm+/PJL
9TeEyUwC3eOD7GEMfv75ZyVSb7zxhhqjTJkyea3LbFyNMmJGfMzGXwsCHHbt2qWEF/LaunVr9RLq
xI8HrL0sUKCAet4z/j/GDTfKxg20MaYYY+1xcmZtGsWpxeFPv83GE+2dOHFCbXbCjyNk9kaNGqWe
g50hQwYpWLCg9O3bV60B1JdFixZJ165d1TXHQgIk4FwClEDnjq2texYMCTx69KgUKVJEbeTA3/qi
Zemwxg8Sg4KLPU2aNCqTg+NDIYHt2rVTX6ookDFk2BALZBRZGHypQgRRVq1apbKKViUQooFMlVY8
SaCnGP744w/JkyePgFvOnDlVNdgBDRZnzpxRU+HIiB08eFDF6kuBbLjHh/OHDh0qc+bMUSKMjCyy
TmbF27jiXE8SqG/fyvi7xwGZ27Bhg8ydO1e9hD5Bkvv06aP++4cfflDxQ+C1zCiynMgGjx492pUZ
9nbNeeKE+n3tN7Kq3sYTmWgtEwjx0wrED9ngzp07UwLNLka+TgIOJ0AJdPgA27V7wZBA9G3p0qUq
03fp0iUpWrSo9OrVS4oVK6amv5ClMSqY6sS0bSgksH///q7pT4gfsmyQKogBpnP107jHjh0TLMC3
KoH9+vWTtm3burrkSQK9xQDphOxpRYsR2Tr8f0gOXvd1Vyhkwz0+tAH5g1iC9Zo1ayxfjp7G1ZsE
6tu3Mv7I2ELekIG7ceOGig3TpPiRoEmgniWmncFPP4bIoKVMmVImTZpk6ZrzxEkD40u/wdPbeJYu
XVpJIK4TfaYPWV1kBZEZx/nVqlXjdLDlK5MHkoCzCFACnTWeEdObYEmg1mFcyMg4YZ0d1t5BCiFY
WDOFqWCj4qsE5suXT62Pg0CibNu2TU1D69cEehIwSJV7JhBT0/gCtiqB+rrRvq8SiClwZI6OHz+u
1rehBDMT6B4fxqROnTpKkpCtxRpL3H/Ol+I+rsmTJxfITbdu3aRDhw6uqtw35WAK1Nv4IyObJUsW
Nb2LMUCMWE+KLKB2vzz3Os0k0KxNI7H0xMJKv7VMoKfx1DKB+PExcuRIV1P6TCB2mONHin6dJQ7E
xhBcs/5ukvJljHksCZBA+AhQAsPHPqpbDoYErly5Uq0HhFhgSg5f4Nh4gTVt+FJv0qSJWuOHzQlY
z7dnzx61HgrHPfbYY6aZQGRPkK3D2jYUTDdi/dinn36q1orhdbxmRQIhgNiYgqlpZC4xpdiqVSvZ
tGlTvEkgYqhcubKkSpVK3f4DbDDdmTRpUlm+fLnqIwQXfdOvCYRMWFkT6C6ByDSBNdYD4k/Dhg3V
dCvWS3orZuOKdYuQ2bFjx0qiRIlUVUY7s72NP34o5M6dW03JlytXTgk91vqhr/5KIOIwu+bc49Rf
Y/7022w80d7JkyddawIxrhiXw4cPqzWB2GSEzUHgobFEP8AGAlizZs2o/pxi50nA6QQogU4fYZv2
LxgSeOfOHTUNh00OmG7Nnz+/WoPWuHFj1WuIFr7wsCgemR/Ih/6muGaZQHcJROYF2Sd8ceJLEtko
/LEqgYgRkorpRn92BweaCYQEYnoWa9y03cG1atVSG1jSp0+vmEEABwwYoKbZMUUK8YVEW9kdrI8P
cg5ZQwawUKFCqm5kAr/44gu1GcZbfWbjimsHY4PNDcjEaruD3fmYjf/48eMFfzB+mB7F9YB4A5FA
sza9SaA//TYbT7SHbKx+dzDWPlasWNH1yYB+Y8wh6Si4PvHDCjeL1nY92/RjhGGRAAkESIASGCBA
nu4fgWBIoH8t8ywSiB4CVu5diWUJkEBNfjF9jB872o7n6KHFnpJA9BGgBEbfmNuix5RAWwwDg3A4
ASsS6HAE7B4JkIAXApRAXh5hIUAJ/Au7tkvYaCCwZg83qA5nCXZ8wa4vnGzs3jYl0O4jxPhIILwE
KIHh5R+1rVMCo3bo2XESIAESIAGbEKAE2mQgoi0MSmC0jTj7SwIkQAIkYDcClEC7jUiUxEMJjJKB
ZjdJgARIgARsS4ASaNuhcXZglEBnjy97RwIkQAIkYH8ClED7j5EjI6QEOnJY2SkSIAESIIEIIkAJ
jKDBclKolEAnjSb7QgIkQAIkEIkEKIGROGoOiJkS6IBBZBdIgARIgAQimgAlMKKHL3KDpwRG7tgx
chIgARIgAWcQoAQ6YxwjrheUwIgbMgZMAiRAAiTgMAKUQIcNaKR0hxIYKSPFOEmABEiABJxKgBLo
1JG1eb8ogTYfIIZHAiRAAiTgeAKUQMcPsT07SAm057gwKhIgARIggeghQAmMnrG2VU8pgbYaDgZD
AiRAAiQQhQQogVE46HboMiXQDqPAGEiABEiABKKZACUwmkc/jH2nBIYRPpsmARIgARIggVgClEBe
BmEhQAkMC3Y2SgIkQAIkQAIuApRAXgxhIUAJDAt2NkoCJEACJEAClEBeA+ElQAkML3+2TgIkQAIk
QALMBPIaCAsBSmBYsLNREiABEiABEmAmkNdAeAl4ksBz587Jk08+KRcvXpT06dObBnn37l155ZVX
5KuvvpIcOXLI7t27Tc+JzwNWr14tb731lvz000+q2bp168rLL78szZo1i88w2BYJkAAJkAAJPEKA
mUBeFGEhECwJXLBggQwZMkQ2btwoqVOnDktfvDVatmxZJYGNGjVSh61bt05J6/79+yUmJsZ28TIg
EiABEiCB6CFACYyesbZVT4MlgYMGDZLTp0/LrFmz/OpfqVKlpEePHtKhQwe/ztdOMqpn+/btUqNG
DTl79qwkTpzYVX+uXLlkxowZ6jUWEiABEiABEggXAUpguMhHebvBksCePXsKpoQ//PBDv4iGUgIH
Dx4sBw4ckHnz5sWJrUuXLpIgQQKZPn26XzHzJBIgARIgARIIBgFKYDAosg6fCWgSiCxZp06dZO3a
tZI1a1bp3r27ysxpawKvX78uAwcOlMWLF8u1a9ekQoUKMnXqVLX+r379+rJs2TJX2zhuxIgRj8Ty
/vvvy8SJE+XChQtSokQJmTx5svq7ZcuWcQStTJkyau2eVi+ma9FOx44dVQza9G3x4sWlXr16gj5s
3bpVEKO+aPUg01e1alU1HawvH330kZJWZApRxowZIx9//LEcOnTIZ448gQRIgARIgAT8JUAJ9Jcc
zwuIgCaBlSpVkowZM8q0adPk999/V2K2ZcsWlwQ2bdpUbt++rcQvXbp0Mnz4cPn+++/VMcimQRjv
3bvnMROITFzhwoUFGzRKliwpO3bskIULF8q4ceNU/N4ygffv35ddu3ZJ8+bNZdiwYdK6dWt1DiTw
/Pnzqh4IX8KECQ3rKViwoPTt21etAdSXRYsWSdeuXVUdlMCALiOeTAIkQAIkEAABSmAA8Hiq/wQg
gZkyZZK8efMqGYIIoqxatUqqV6+uJBDyly1bNrXmL3PmzOp1XLBp0qSR9evXS5EiRUwl8OjRo+o4
bBzB3+7FynQwMokbNmyQuXPnuiTwxRdfVNlBrRjVY1UC/afIM0mABEiABEjAfwKUQP/Z8cwACEAC
kcHDtKp+OvXYsWOCjROQwH379gkyhUZlyZIl0qBBA1MJxLlLly5VmcRLly5J0aJFpVevXlKsWDFV
rZG8zZ8/X0aPHq3W8924cUMdV758eSWeKMgE9uvXT9q2betVAiGz1apVM50ODgAjTyUBEiABEiAB
vwlQAv1GxxMDIeApE4ipXogTJPDmzZtKCLGWD1PBRsVsOlh/Di72OXPmqHWHWIuYPHlyKV26tHTr
1s21OxhZySxZsghuPYM4UqZMqdYQIguo3esPEti/f39p06aNq3r3evACdi4fPHjQcGMI1hf6u5kl
EO48lwRIgARIgAQ0ApRAXgthIaCtCcRGD0z1IlOHNYGtWrWSTZs2udYENmnSRGUMJ0yYoDaO7Nmz
R0aNGqWk7LHHHjPNBK5cuVKtB8QNmjG1jPOwEeXKlStK8HD/vjx58sjYsWMlUaJEgkxk7ty51bR0
uXLlZNu2bWqdIm5g7U0C3esBVGwaqV27thJO1K0V1A8BrFmzpvonbgwJyyXIRkmABEgg6glQAqP+
EggPAE0Csd4PUoapVqPdwRBDbAbBE0GQpcMmD/3Nl80ygXfu3JFJkybJzJkz1drC/Pnzy9ChQ6Vx
48aq44gDGzewMxcbRyB648ePV3+uXr2qdhHjhs9YU+hNAo3qQf04d8CAAdKwYUPVHvoJIcXNorGx
hRIYnuuPrZIACZAACTxcZ68VfCdp381Yk48S8yC2EBQJBJtAtDw7GNPbkEBNILEGEjemxsYSFhIg
ARIgARIIJwFKYDjpR3Hb0SKBUTzE7DoJkAAJkIDNCVACbT5ATg2PEujUkWW/SIAESIAEIoUAJTBS
RsphcVICHTag7A4JkAAJkEDEEaAERtyQOSNgSqAzxpG9IAESIAESiFwClMDIHbuIjpwSGNHDx+BJ
gARIgAQcQIAS6IBBjMQuOEECcf9B3K5G2/kbiePAmOMSqFu3rrqFT7NmzYiGBEiABBxPgBLo+CG2
ZwfDKYG4dx/uDYg/gRTUo79TuvDRAAAgAElEQVRnYSB1hercYPU1VPHZrd5169ap6wL3ccRTXVhI
gARIwMkEKIFOHl0b9y2cEugrFqPnC2/fvl1q1KihngaSOHFiVWWVKlVcTzD5+OOP5bvvvlP/jmcQ
v/nmm+omnHfv3nXdQLpixYrqdaP6fY0xmPX407bROcHqV7Di0dfjaaxwDB5VOGPGDDW+LCRAAiTg
ZAKUQCePro37FukSOHjwYCV38+bNc1H2JBZ58+aV5557TkaPHi2pU6dW08d4ismyZcsogWG6Rr1J
YJcuXdTTXKZPnx6m6NgsCZAACcQPAUpg/HBmK24EgiWBxYsXF6zjwjTezp07BcI1ZcoUKV++vGoR
r+MpHWgPz/LF4+MgYPrpYBzToEEDdcyWLVvUc4JRB57ti+cG60WvTJkySuKQJapataqaDtaKkVjg
UXeZMmUSZA7RjnvxVH/9+vWVJGJKMkeOHNKxY0cZOHCga4rSvV/Xr1+PU7UWp/t0sLe+ogL3x/i9
+uqr8tprr7me5ewe//vvvy8TJ06UCxcuqEfsTZ48Wf3tqV9G44G+om+LFy+Wa9euCZ4njWdJo98o
VlhgLDZv3qw4Z8+eXWbNmqUe0YfY8OjBFi1aqOc1a4/q8yaBH330kToWdbGQAAmQgJMJUAKdPLo2
7lswJfDEiRPq2cKQD2RvRo0apZ4FnCFDBiVeELGFCxcKxChhwoRqOtZdAvGc4Pnz56tnE0McIDfn
zp1T0mU0rVmwYEHp27dvnHWFRmKBpy4WKFBAChUqpKaEEU/SpEnjjIy3adP79+/Lrl27pHnz5jJs
2DBp3bq1S27d+2VUj699hYBly5ZN9R/y1KpVK9m0aZOhBCITCl7YIIPnLu/YsUNxHjdunIrRKB6j
8WjatKngOZUQv3Tp0qlnReNxexByTdpQnzcWkMcFCxYo1pBW/H+I6JgxY+Ty5ctSqVIl1SftcX3e
JHDRokXStWtXdd2wkAAJkICTCVACnTy6Nu5bMCUQmUCIn1YgaL1795bOnTsr6cIXPzJNWjESo3bt
2impQ4EQpk2bVk6dOiVZsmSxLIGecCO7hqngb7/9Vo4fP67q69+/v0B+PMmSe10QmA0bNsjcuXNd
EujeL6sS6Kmvt27dknz58sURPshYtWrVDCXw6NGjUqRIEdm4caP62714kkB93GAM6QSjzJkzqyrw
oZQmTRqVyTOq14hF+/btpU+fPur8H374QWVpIbEpUqRQ/9amTRvVDsbBrFACzQjxdRIgAacQoAQ6
ZSQjrB/BlMAePXrEychh+hBZQWSUIIH9+vWTtm3bepVASBlEAQVZqWTJksnBgwfV9LKRzFSvXl3J
kX462MoQ/PbbbzJ79myVrVq1apXaTGJUP7KSEBZk227cuKGqxhQ3xAjFqF9WJdBTXyFiYAd50sqx
Y8fURomLFy9K+vTpH+ni0qVLVQbv0qVLUrRoUenVq5cUK1ZMHedJAvXjgWl8ZOmMypIlS9Q0vRUW
+j5huh7jo58iR+Y3ZcqUaimAWeF0sBkhvk4CJOAUApRAp4xkhPUjmBKINX8jR450EXDPBOoFAQcZ
ZQK9SWDp0qWlW7du0qFDB1cbgwYNUpKoXy/oyxDkyZNH3Y8OGUr3+jENiQwkpjQhmpAXrLVDFlC7
JyEk0L1fRnH60lfE70smUN9ffJDMmTNHunfvrnZMJ0+e/JF+afKqjxtT+ZBMrCnEVLB78YdFoBKI
jSFYBoB1gSwkQAIk4GQClEAnj66N+xZMCTx58qRrTSCyOMgAHj582LUmMFAJbNSokUDaxo4dK4kS
JVJUscmkdu3aSni0fzPCjewa1pdhehrZSaxxg8xBKjE9jIyVe/3IvuXOnVtlCsuVKyfbtm1T69uw
YcWbBBrF6YsEIuuJ9rAhw8qawJUrV6r1gJBZTLWiX506dZIrV64ocTWKx0hemzRpIvfu3ZMJEyZI
1qxZZc+ePWp6H/WBr68sApVAtAcBxMYgFhIgARJwMgFKoJNH18Z9C6YE1qlTJ87uYAiMdg8+I+nw
VYwQK6YTsdkEGyA0EUM9AwYMkIYNG3oljV2+yORhowM2NyDbhulgrM1DMap//Pjxgj9Ynwh5RFtY
e+dNAo3q8bWvEGqspURdyEZiV/Lrr7+udu2mSpUqTj/v3Lmjplex4xqymz9/fhk6dKg0btzYY7+M
xgPTzxB3bO5B5g+bTfQ34faVRSASiOl2SC1uFq3flGLjtxJDIwESIAG/CVAC/UbHEwMhEEwJdM/0
BRKXL+di0wQk0MmPjVu+fLlaK4nsXjQULC3AtL+2izga+sw+kgAJRC8BSmD0jn1Ye+4ECQwrwBA1
jjWOmN7GVOiRI0eUACKrOm3atBC1yGpJgARIgATCRYASGC7yUd4uJdCeFwDuqYfNHStWrFC3V8Ft
bHCvPeyWZiEBEiABEnAWAUqgs8YzYnoTLAmMmA4zUBIgARIgARKwGQFKoM0GJFrCoQRGy0iznyRA
AiRAAnYlQAm068g4PC5KoMMHmN0jARIgARKwPYGolMDYh0PELn6X2LVOth8fxwZoBwl0v33K3bt3
1a1gcKsS3Ctv9+7dPvE3uv2JtwrwbGLc+8/T0zjMGg80XrP6+Xp0EcA9H3FrHm23Ox7HiNvlNGvW
LLpAsLckEEUEIkoCY59NH/twepFdu0RSpxaJfda9jBghsQ+N923EApHAzZsl9r5pEnsDX4l9jJZI
q1YS+8EpsTfHtRZDzpwS+yQIPFLL2vH+HhV7z11ZvDj07fgbnx0lEE/oGDJkiLofX2pcYD6W+JbA
QOP1sXs83OEE8KNIf39GPNIPP4pwz0Q8QYWFBEjAeQQiRgJnzHgoXxMnisTeyiv2Rq4S+xxVkdhb
tcmUKb4NjL8S+McfEvtkBJGePSX2Zr8S+4xViX1UlkimTBJ741/fYgj10ZRAc8LumUA8Cg43PZ41
a5b5yQZHxLcEBhqvX520wUlGzyS2QVghDyFY/TaqZ/v27VKjRg31hJbEiRO7+oJH+s2I/fDFaywk
QALOIxAREnjrlkjmzA+zgLE/TA1L7MMc5NVXRX7+WWKfdCAybJhI8+YPD927V+T//k9if9GKlC//
MIOH+rTp4NiHFCixi31Kl8roxT7hS/r0ebQZnP/00yL/3965QNtUtX384fCSXHLJeF3fOi41FKcb
+twqt+TOV5TcRlIiEaovt48K5RKSKJXXGL0GSUSMyqXIUMnlEOMr99ANUTkkl9G3/o/WaVvW2mvv
c9Y+a+21/3OMM07Za8/5zN8z2f/9zGfO5/RpkUKF7O2AIITIhI4wii+IsaMic+b8/XxkJBDPYiy8
DhvuueeCoP3HPy707fa6k93YvUHU1Gzo89FHg7V4gxgJ7G8sAmyx5rRmbF6LwNzaG6wVEbs1Xomh
2EcMxpNezduunxEjRsjOnTsvqYWNOsqonDJjxoxgQKAVJEACnhJIChGIiJ9xX6389ptIsWKXzt+o
xCU1a4q0bi0ybJgY23li5LGIUUpMpFYtkRo1RDp3viDOjHKn2f8NEfjnnxeEoVENzChddUGMoQqY
GXGMHA1i1PhiLF26iBj/NhplssTYJrnYHgg3jAdhl5YmxjdokUGDxCi/deE5qwg0UsKMHLQL/Rgl
VOW//1vECEhli0Cn193sTpVIIErETTacdfjwYS2vhvJs+I2WlZVlrIdhxrb4Yi171sDIH5g+fbrm
+6FFRgJbG4sH5d3Mhvc9h1yDiIa6tv/+97+13i/aoUOHtGYuSrtdccUVAhHYpk0bLbmGEnHI95tm
KHCzBi2iLKitu3btWq2Ri/v4HjXUeSw5gegb1SzQN+oWY26RzbTXzQZwQh3jlStX6hYf6h+DX6lS
pbS734y/ZBAES5YskV9++cX4ItVJXnzxRb0zMFqz2jfa+Bb2wgsvaD1gXDiNhhJ0uIAaY6fhL0eU
5uRX1FDGhdZmq1u3ruawWcdHKTv4NJr/TZ+DA9YE7MPz5tYn+mzcuLF8aeSAIFJWuXJljRKjtByY
odxdZ+MfFnxpMEvMua05OzsxJ7PFO+9Y5hBt3Zj8EOnDXLEdHNlQixvzw/zZSIAEwkcgKUTge++J
3H8/PtTtHYA8PdR6Nz7fjK2MC88Y+czGB9uFaCC2j40cfBVlaBCLRnlSjQRu3Spy++0iR4/+/TqK
I2zYIMYH/qXjIRoIsWh8jhl1YC+ItnHjREqXvvAsRKBR9177RIMoPXXqgqhEs4pAjGXcx6sNOXx4
fseOv/tyet3N7lQQgYhcoM4sEtpR0zczM9OIgC40IsZGyNhouOj4tBG2hfArbTgI9WlR6g0CDR/a
1u1gCLJz5845RgJjEYEQhAsWLFC7IBTwoY4DIBAWjRo1krJly2r1DQgIfPjDllhFIOrqYn744IaI
srMXIiOaDbcbCxOCDiIJdYx79OihF0GbArhdu3ZaIg4f/uWNcPnbb7+tvyE2ojWMa7UPYg8++MII
z0NIPfnkk+qjf+IvSZTm5le7SJbd+G7+N00Ah21GojEEL8RrF3zLMxr6xJcH5F5eYyQeo94z/ht+
wwXauFgbPoWPzTJzbmPa2WnakZN5xzIHq1/s+NUwvrkOMr6tIgcwsi1atEj69OmjvmUjARIIH4Gk
EIFukUCIRETPvvrqbwchiAMxhQggtoYjv8hiaxTbvhCBRsBDjM89FYiIrpk/xpdi3R6O1rAF/dBD
IsWLXxBwaPh8g0CEyESDHUbAyBAWF/7fKgIRfEIUEs34fJQ77hDjQ/zvvpxed7M7FUTgvn37jAhw
TT3Igd+RzYzSIccPIgYNi71kyZIaycHziRCB3Y3kUHyYokGMIcIGWyBGq1atqh+mEIJoq4wFhqhi
rCIQQgORKrM5iUAnG/4wklqrVKki4HYVFqLRcAIaLL7//nvdCkdEbNeuXWprPA3ixmof3j9q1Cgj
b3auCmFEZBFtcmvR/Ir3OonAyPFj8b/VDoi59evXG1/ijG9xRsOcIJIf/ys35JNPPlH7IeDNyCii
nIgGjzO+CcYyphMnjJeTeccyB6tfKALdViBfJ4HUIZAUItDMCZw48e9t1UgXuUUCEcQwduJsI4EQ
h3gdQi0nB+Bw0heiEpFGtHhFYE4jgW52GztXus2c6FPIOf2r4lVO4NKlSzXSd9QI5dYy9v4HDBgg
GRkZRirApxqlsWvY6sS2bSJE4BAj58Dc/oTwQ5QNogpiFNtykdu4+/fvN9ILro5ZBA4ePFi6deuW
PSUnERjNBohOiD2zmTYiWof/hsjB6/GeBoW4sdqHMSD+ICzBes2aNTEvFye/RhOBkePH4n9EbCHe
EIE7efKk2lbfyA3BlwRTBEayxLYz+EX6EJGzosY3yilTpsS05pw4mWDinXcsc7D6xU4EYl5NmjTh
dnDMK5QPkkA4CCSFCARqY3dK/ud/Ls7VM08HG//+auQNuXxDh4qRI3RhixU5gYYekGuvvbCdjAAN
ThMjXxD5gYgEGsEhzQn8r/+60D9OHSPKBuFppGxd1P7v/0TGjr1wMvi66y4IS0QCUVb1/fdzJgJx
iAWHOCBAYTOiksYtJdmC0ul1N7sh/mB/z545E7eJXt5eiUDTTixkRJyQZ4fcO4hCCCzkwGEr2K7F
KwKrVaum+XEQkGibjXuCsA0dmRPoJMAgqqyRQGxN44M31khgZN8YP14RiC1wRAK//fZbzW9D8zIS
aLUPPrnrrrtUJCFaixxL3DsXT7P6tUiRIlKnTh3p27evsbaNxf1Xsx7KOXDgQFT/IyJbwfjLhe1d
+AA2Ip8UUUDznjxrn24i0G1MO2HpxCKWeedkDhjPjh9OmuPLSmS+JZ7FwRCs3ZwelorH13yWBEgg
7wkkjQgEGkTdkO6FbV9swSLQ8+yzF+4JNL7M6+lg5PJBOP3v/164w+/CB92FHMFvvnE+HWwEWfTQ
CBo+4yEQcYo4skF4ISfd2DXSuwphg/H5IYhQmmlO8UYCjcBV9ulgiNOXX/77JDH6ivY60nSc7EYU
EGLV2OVTe8N4OniF4TDkA0JYYEsOH+A4eIGcNnyodzBO2iDHD4cTkM+3w8gPGGuoeDxXyDje7SYC
EeVBtA65bWjYVkP+2Jtvvqm5Yngdr8UiAiEAcTAFW9OIXGJL8T5jgW4wFmxeiUDYcNtttxnrtrhe
+wE22O4sXLiwLF++/K+130bnFpkTiAMuseQEWkUgcjDBGvmA+GlrfEvDdivyJaM1N78ibxFidvz4
8cal78at70azO5kdzf/4opCenq5b8vXq1VNBj1w/zDWnIhB2uK05q52RayzeeWNtxjsH2GjHD4eN
cEgIXEymeBb9QwCah5vy/iOKI5IACSSSQFKJwESC8KNvq2C02uD2uh82ezWmF5HAM2fO6DYcDjlg
u7W6cVwbOWjt27dXMyG0IERQAQRRE4iPyMtw4xWBONmK6BM+MPHhiGgUfmIVgbARIhXbjTk5HZzb
SCBEILZnkeNmng6+88479QBLmb++8UAADjXC6diWxBYphC9EdCyngyPtgziH2EAE8DqEzY2GSOB/
/vMfPQwTrT83v2LtQDztNpJyEYk1Twdb+bj5f6Lx7Q0/8B9OlGM9wN7ciEC3MaOJwJzMO945wA92
/PDnmD98D7GOhnWKL1i4LNo8/ezV33/2QwIkEAwCFIE++sFN5Lm97qPpuR7aCxGYayPYAQmQQDYB
pCdABJoiGDms+NJjnnwmKhIggfARoAj00aduIs/tdR9Nz/XQFIG5RsgOSIAESIAESCBXBCgCc4WP
b84pAYrAv8mZp4TtWCJnDxdU+9m8ts/r/vxkw7FJgARIIJkJUAQms/eS2HaKwCR2Hk0nARIgARII
BQGKwFC4MfkmQRGYfD6jxSRAAiRAAuEiQBEYLn8mzWwoApPGVTSUBEiABEggpAQoAkPq2KBPiyIw
6B6ifSRAAiRAAmEnQBEYdg8HdH4UgQF1DM0iARIgARJIGQIUgSnj6mBNlCIwWP6gNSRAAiRAAqlH
gCIw9XweiBlTBAbCDTSCBEiABEgghQlQBKaw8/2cOkWgn/Q5NgmQAAmQAAmIUARyFfhCgCLQF+wc
lARIgARIgASyCVAEcjH4QoAi0BfsHJQESIAESIAEKAK5BvwlQBHoL3+OTgIkQAIkQAKMBHIN+EKA
ItAX7ByUBEiABEiABBgJ5BrwlwBFoL/8OToJkAAJkAAJMBLINeALAYpAX7BzUBIgARIgARJgJJBr
wF8CFIH+8ufoJEACJEACJMBIINeALwQoAn3BzkFJgARIgARIgJFArgF/CVAE+sufo5MACZAACZAA
I4FcA74QoAj0BTsHJQESIAESIAFGArkG/CVAEegvf45OAiRAAiRAAowEcg34QiAVRODZs2flwQcf
lHfffVf+9a9/yfbt231hzUFJgARIgARIwI4ARSDXhS8E7ETg5MmTZe/evTJt2jQZMGCAVKpUSYYM
GeKLfV4M+s4778jIkSPls88+kxIlSnjRJfsgARIgARIgAc8IUAR6hpIdxUPATgR27txZ2rZtK/ff
f7/UrVtXJk6cKA0bNoyn2+xnb7nlFnn00UelZ8+eOXq/F28aPny4fPfddzJ79mztLlE2YZ7Tp0/X
MdLS0uTcuXNemM8+SIAESIAEQk6AIjDkDg7q9OxE4FVXXSWrVq3SCGDJkiXlyJEjUqRIkRxNIVGC
Kx5j+vfvL9gSnjlzZkJFoGnT+++/L+3bt6cIjMdJfJYESIAEUpgARWAKO9/PqZsicOXKldKsWTNH
UypUqCCHDh2yff2ll14SbCEfPnxYbrrpJpk6dar+vvfee2X+/PnZ70FU8fPPP9fnBg4cKBgzX758
0qJFC31/qVKl9NkbbrhBWrZsKZ9++qls3bpVqlatqlvT9evXtx2/devWsmzZMu0LOX+9evWSYcOG
6f+brzlNzLQpKytL37N48WL59ddfpUGDBhrVQ3+mTa1atRLw2rRpk8yaNUvnZ9diFYFO3NCnmz2/
/fabjBgxQpYsWSK//PKLdOrUSV588UW5/PLL/VxOHJsESIAESCAHBCgCcwCNb8k9AWskcM6cObJ8
+XIVb88884ycPHlSXnjhBceBdu7cKddff718/PHHcvPNN0tmZqYsXLhQJkyYoO+xiwTefvvtKlYg
pM6fPy89evSQyy67TIWcKbgOHDigBzkgJmfMmCFjx46V3bt3y5VXXuloC/ratm2bCqLRo0dLly5d
9Fls02JrNloksGPHjnL69GkVfqVLl9a5r169WjZu3Cj58+dXYfrTTz/p3CAcsd3r1GIRgW7c3Oxp
166dHDt2TF599VUpX768vP322/obopeNBEiABEgguQhQBCaXv0JjrVUEdu/eXfP/evfuLXfccYcM
HTo0aoRw3759UrNmTT10gd/WZhWBOHBSpUoVwfuw7YyG07p47/fffy/lypXLjgRC+JmtRo0aGj18
6KGHXNkjwrZ+/XqZN29eTCIQEU5sfSNvEEIKDX8hsRW+bt06tQ0i8J577tFooVuLRQRG4+ZmDw63
IEK5a9cujZKykQAJkAAJJDcBisDk9l/SWm+KQGydRmtfffWVRvzs2tKlSzWCdvToUalVq5aeKM7I
yNBHrSJwzZo10rRpU83RMxsicIgEfvHFF1KnTh0VXIje4VoXsyHChaggInTWtmDBAhk3bpwguobI
JRq2jiHg0Nwigdh2btSoke3csN3apk0btWnw4MHSrVs3V1/HIgLRiRM3N3sgAhs3bqwM3fzmaiwf
IAESIAES8J0ARaDvLkhNAyIjgYhA1a5dW3744QfNx4Po2bBhQ8xgsIjnzp0r/fr10z5wmASirm/f
vtmng81I4LfffiuVK1fWvu0igci/GzNmTPbYTpFAbNEiXxHXwDRp0kSKFi2qOYmIAiL/0E4EWm3C
1vPVV1+tuYrYCrZrEIG4Jqdr166uPGIVgWZHVm4Q09Hsgb2MBLq6gQ+QAAmQQNIQoAhMGleFy9BI
EYiIGkTcokWLNKcPohCCKlpbsWKF5gM+8MADuqUK8YWtZOSrQZAhdw3bv+PHj5cCBQpoV7fddpsU
L15cXnvtNc3VQ05g4cKFNRcRDYLr4MGD2TmByHtDBHDPnj2X5ATu379f0tPT9TRzvXr1ZPPmzXpg
A9vKTiLQzqYOHTqoLZMmTZKKFSvKjh07NA8R8ylUqJDa5KUIdOPmZg+ikzjAEpkTiDkzJzBcfz85
GxIggdQgQBGYGn4O3CwjRSBEDg5ePPXUU3L33Xfrj9MJWHMiZ86ckSlTpughD+TUVa9eXUaNGqVX
pKChf2zr4lAHDo5AmP3444/y+OOPZ58OvvPOO/V0cJkyZbJF4F133XXR6WDk+TndVYh7DPFz/Phx
3TK+9dZbNUfRSQTa2XTixAkVmjiMgugitr6ffvppFbGmMHUTga+//roKYGvDFTvm3GLl5mYPBCDy
NbGljC1w5CtCwPJ0cOD+itEgEiABEnAlQBHoiogPJIJAEMvGxRN1SwQT9kkCJEACJEACeUmAIjAv
aXOsbAIUgVwMJEACJEACJOAvAYpAf/mn7OgUgSnrek6cBEiABEggIAQoAgPiiFQzI4giMNV8wPmS
AAmQAAmkNgGKwNT2v2+zpwj0DT0HJgESIAESIAElQBHIheALAYpAX7BzUBIgARIgARLIJkARyMXg
CwEvRCCuZME1MGaFD1SywH/juhVcaozLoIPegnAiGVfn4K4/uytlgs7Pa/tw9ySu6DGv+fG6/0T3
17JlS707E9cssZEACZCAGwGKQDdCfD0hBBIhAlG9Y+TIkXpXH0qcJUMLogi0iuu85ujn+Bg78p7G
vJ57bsdDxR18Efr6669Z2i+3MPl+EkgBAhSBKeDkIE4xESJw+PDhenH07NmzbadsrSeMh1DfF/WH
0dLS0rR6R6Ka3fhBFIGJmr9Zq9mp/0Tzd5vXli1bpFmzZlp6sGDBgvp4IteH3XpwszGW11H6D1Vx
MBc2EiABEohGgCKQ68MXAokQgf379xdsCc+cOTNmEWg+GG/d3ZxAS3URaGWGLcsrrrhCUPEkCG3E
iBGyc+dOmT9//iXmJGJ9JEoEPvzww5I/f36ZMWNGELDSBhIggQAToAgMsHPCbJopAlGWDaXbDh8+
rKXXUDMYv9GysrJk2LBhsnjxYq1X26BBA43aId8PLXLbELVrly1blo0M73vuueey/x9l6CI/3OvW
rXtR3lciPuQj/ec0PiKBqMcLHhs3btTcvGnTpknz5s317Xi9VatW+vqmTZu0TB7mGo2LySJfvnzK
qlevXvo8/h8NkS6UmVu7dq3WK+7Xr59GvMycQOt2rJuNiL6iv3Xr1ml/jzzyiDz22GOuOYZOItBu
/MaNG8uXX34piNZVrlxZo70YD2sHpe46d+6s4h/iJ5a1Y8f1jTfeEIyD7WBry+n6cFrfTusBfw8G
DhyYXdqwRYsWOsdSpUplrwfk/WHbd+vWrVK1alVdL/Xr1882GXWdwQKs2EiABEggGgGKQK4PXwhA
1KBeMGrlIhkf9X0zMzNl4cKFMmHCBLWpY8eOgi1ECL/SpUtrjd3Vq1erWMKHvVUsQMhgOzeRkcCe
PXvKnDlzHJlZxWfkg06RQNQeXrBggbLABz6EAw5rQLRBrKCmMLhAuGLL1I2LOeb58+dl27Zt0qlT
Jxk9erR06dJFX2rUqJGULVtWXnnlFRVQECRgGk0ERrMR4rxSpUpqN/q77777ZMOGDZ6KQHwJQM7n
NddcowIT/w27n3/+efn55591ThgftYxjWTt2XGvUqCGDBg3KPmgU6buciEBEFaOtb7v1cPvtt2sd
Zoh9+K9Hjx5y2WWXZX/Bgd0HDhzQw0/4soRo39ixY7VGNv4+oS1atEj69Omj64aNBEiABCgCuQYC
RwAisHz58lKzZk09yIHfke3QoUMqLBBlwnNo+MZSsmRJjQDheT9EYG5AOonA7t27q/hAg9hC1Afz
r1ChgopACBuIS7RYuFZnz1gAACAASURBVFhthDhav369zJs3T/bs2aPRIwgECEG0VatWSdOmTaOK
QCcbf//9d6lWrdpFgg9CvUmTJp6KQIihxx9/XO395JNPNGIHwQnBhNa1a1ddL+PGjYuJkZUr+vBa
BO7bt89xfWM863rYu3evVKlSRfC+q666SueFE+5Y699//71GiWE3IoEQfmaD3YgePvTQQ/pHFIG5
+VvK95JAahFgJDC1/B2Y2ZrbwUuXLtVI39GjR6VWrVoyYMAAycjI0O0uRHfs2pIlS3QLNSwicMiQ
ISpi0MzDE7t27VKxhg/9wYMHS7du3fT1WLggqggxhEjUyZMn9X3YLoR4XrNmjW4vY6vdbPv37xcc
JogWCXSyESId288QZE79OS26eLaDI8fH9S0QrZFzwInYokWLypQpU2JiZOUKG9EnxKuX28FO6xvj
WUUgfAMbkNdqNnM9fPHFF1KnTh1dD4h4m9ci4TnwR1QQkXI0bgcH5p85GkICgSdAERh4F4XTQOvB
ECzEuXPnan4actYgCiFMkCOFrWC7Fq8IxIdo3759BVu61hbrdl9utoPtxreeDrYTgZECCFuB0bgg
wocIIrZLIWggjJBniSggxJNdJNAaubPLyXMSgeCYF5HAeESgGyPYbHcqG6fLIb4TcTDEur6LFCmi
oi5yPZqRwG+//VbzHtHsIoEQ8WPGjMlewtZIIA6GIJXAKS0inP+icFYkQAI5IUARmBNqfE+uCUAE
njp1SvMBcbkttvIgVHDA4NixYypeOnTooDl+kyZN0gMHO3bs0G0wPFeoUCHXSCCiJYhyrVy5Uu1t
166dbreNHz9eChQocNEcYhWBuZm43fjxikCMH40LBHR6erpu8darV082b96suXPYSjQvQEYOH7bY
EYG1y+GLRwQiWolxcADFKSfQ6geTYaIigW6MsHbsRCAO3uAgBhjGuj6Qk4jTzcjJs7YVK1ZEXd92
6+G2226T4sWL6xUvWPvYBi9cuLAsX75cu4fdBw8ezM4JRNQPEUCIezMnEP6HADQPF+VmzfK9JEAC
4SZAERhu/wZ2dhCBtWvX1u07JMFjW7F69eoyatQoad++vdoNgYIPOCTBI8KFJPvIi3zdIoFW8YEx
8Wf4wMZBFIgifIBDeFpbIqpn2I2fExHoxmXixImCH+QXYpsQnJB3aYpA62neWE4HR9uyhihBPhrm
hygkTiM/8cQTeqIbgsYPEejGyOl+RrAaOnSotG3bVpeE2/rASeg//vhD3nzzzUvW0JkzZ6Kub7v1
gANByH3EFxdE8+688049LFSmTJlsEXjXXXdddDoY4rthw4b6Orb88aUKl0WbJ6UD+48ADSMBEvCd
AEWg7y5ITQO8uCcwNckFf9aIWiHHERHdZGvYGocIjLVsHLZiP/jgg+zt20TP1+1ycWwVI2XBPCWd
aHvYPwmQQHIToAhMbv8lrfUUgUnruksMRw4dtk+x/Yi8NghARKZwBQ2btwTcRKC3o7E3EiCBsBOg
CAy7hwM6P4rAgDomB2bhnj5sKX/00Ud6ZQvuMUSuHO63Y/OWAEWgtzzZGwmkOgGKwFRfAT7NnyLQ
J/AclgRIgARIgAT+IkARyKXgCwGKQF+wc1ASIAESIAESyCZAEcjF4AsBikBfsHNQEiABEiABEqAI
5Brwl4AXItB6RQwqLeA6Elwpg3vrcNFumBruVMQVOebJVZQPw3UguG+PjQRIgARIgATiJcBIYLzE
+LwnBBIhAlElY+TIkXonXokSJTyxM0idQPRG3pOIEnIQvbgTDnfKsZEACZAACZBAPAQoAuOhxWc9
I5AIEYiyX7gIefbs2bZ2Wmu14iHUYUXlDLS0tDSt0pDTZtd/Tvqy62fLli3SrFkzrWZRsGDB7G5R
Qg7VJfAaGwmQAAmQAAnEQ4AiMB5afNYzAokQgf379xdsCTvVTI0m0rwoG5dIEThixAjZuXPnJXVt
UScWlSFmzJjhmW/YEQmQAAmQQGoQoAhMDT8HbpamCETJK5TFOnz4sJY4mzp1qv5Gy8rKkmHDhsni
xYu1BBlq3iJqh3w/tMicwNatW8uyZcuy54n3Pffcc9n/j/q5uNTYbHXr1r2oKkSsItDJXqf+Tbuw
XQu7UVINtpnbt7j3DVUewAO1azHnyGbaiUhf48aNdTs4sqF2LEQvIoVsJEACJEACJBAPAYrAeGjx
Wc8IQPSg4D3qAePAA2r5ZmZmysKFC2XChAk6Di4dPn36tAq/0qVLax1hlPXauHGjRr/cagdbjc1t
JBCRuGj2Ruv//Pnzsm3bNunUqZOMHj1aunTpouZBBKIuMuYNwYctabt+UJ5s0KBBmgMY2RYtWiR9
+vTRPthIgARIgARIIB4CFIHx0OKznhGACCxfvrzUrFlTD3Lgd2Q7dOiQVKpUSXP88BwaFmvJkiVl
3bp1+nxei8B9+/Y52gv7YtkORiRx/fr1Mm/evGwRiDqviA6ajSLQs2XGjkiABEiABKIQoAjk8vCF
gLkdvHTpUo30HT16VGrVqiUDBgyQjIwMwcnXRo0a2dq2ZMkSadOmTZ6LQBjjZK+TCFywYIGMGzdO
8/lOnjyp86lfv74KWTREAgcPHizdunWLKgKbNm0qTZo04XawL6uVg5IACZBAOAlQBIbTr4GflfVg
CBbi3LlztQYtTsBCFOLkK3IFsRVs1+KNBNapU0f69u0rPXv2vKS7WHMCzTda7S1SpIhY+8cWbYUK
FQRX10DAFS1aVHMeEQU07/qzqwVrZydOPu/atcv2YAjyC50OwwR+IdBAEiABEiAB3whQBPqGPrUH
hgg8deqU5gPiwmNs/UIc9e7dW44dO6aCqUOHDnply6RJk6RixYqyY8cOGTt2rD5XqFAh10gg8uf2
798vK1euVNjt2rWTKlWqyPjx46VAgQIXOcBJBEb2sWLFiqj2WvvH2Onp6bJq1SqpV6+ebN68WXCA
pFy5clFFoJ2dODTSokULFciRtqN/CMDmzZun9oLi7EmABEiABOImQBEYNzK+wQsCEIG1a9eWKVOm
yKxZszT3r3r16jJq1Chp3769DnHixAk9DIIKIIiq4VBG5GXJbpFAqwjEmPiz3bt360EURONef/11
FZ7WduTIESlTpow+bwrJM2fORLXXrv+JEycKfo4fP66nnmEzciCjRQLt+oF9eO/QoUOlbdu2ai62
lCGgcVk0DsqwkQAJkAAJkEA8BCgC46HFZz0j4MU9gZ4ZkyQd4WQ0RKApIHG1DLa2cbCEjQRIgARI
gATiJUARGC8xPu8JAYpATzCyExIgARIgARLIMQGKwByj4xtzQ4AiMDf0+F4SIAESIAESyD0BisDc
M2QPOSBAEZgDaHwLCZAACZAACXhIgCLQQ5jsKnYCFIGxs+KTJEACJEACJJAIAhSBiaDKPl0JUAS6
IuIDJEACJEACJJBQAhSBCcXLzp0IUARybZAACZAACZCAvwQoAv3ln7KjUwSmrOs5cRIgARIggYAQ
oAgMiCNSzQyKwFTzOOdLAiRAAiQQNAIUgUHzSIrYQxGYIo7mNEmABEiABAJLgCIwsK4Jt2EUgeH2
L2dHAiRAAiQQfAIUgcH3USgtpAgMpVs5KRIgARIggSQiQBGYRM4Kk6kUgWHyJudCAiRAAiSQjAQo
ApPRayGwmSIwBE7kFEiABEiABJKaAEVgUrsveY2nCExe39FyEiABEiCBcBCgCAyHH5NuFhSBSecy
GkwCJEACJBAyAhSBIXNoskyHIjBZPEU7SYAESIAEwkqAIjCsng34vCgCA+4gmkcCJEACJBB6AhSB
oXdxMCdIERhMv9AqEiABEiCB1CFAEZg6vg7UTCkCA+UOGkMCJEACJJCCBCgCU9DpQZgyRWAQvEAb
SIAESIAEUpkARWAqe9/HuVME+gifQ5MACZAACZCAQYAikMvAFwIUgdGxnz17Vh588EF599135V//
+pds377dFz9xUBIgARIggfASoAgMr28DPTM7ETh58mTZu3evTJs2TQYMGCCVKlWSIUOGBHoeiTLu
nXfekZEjR8pnn30mJUqUSNQw7JcESIAESCCFCVAEprDz/Zy6nQjs3LmztG3bVu6//36pW7euTJw4
URo2bJhnZt5yyy3y6KOPSs+ePXM1phf9DB8+XL777juZPXu22uJFn3aT6tOnj7z66qsXvQQxPnDg
wFwx4JtJgARIgASCT4AiMPg+CqWFdiLwqquuklWrVmkEsGTJknLkyBEpUqRIns3fK6HlRT/9+/cX
bAnPnDkz4SKwQIEC8vLLL+cZZw5EAiRAAiQQDAIUgcHwQ8pZYYrAlStXSrNmzRznX6FCBTl06JDt
6zfccIO0atVK0NemTZtk1qxZ0rp1axk2bJgsXrxYfv31V2nQoIFMnz5d8+rQXnrpJUGk6/Dhw3LT
TTfJ1KlT9fe9994r8+fPzx4HkcjPP/9c+1u2bJnky5dP++jVq5f2j/9Hs9qQlZV1ka1mP9YJROvX
fM0Jitknxoo2Vzs+mGdkQyQwHhHoxA99utnz22+/yYgRI2TJkiXyyy+/SKdOneTFF1+Uyy+/POXW
PydMAiRAAkEgQBEYBC+koA3WSOCcOXNk+fLlKsSeeeYZOXnypLzwwgtRyUDk/PTTT7Jw4ULdPk5L
S5OOHTvK6dOnVfiVLl1a+1q9erVs3LhRdu/eLddff718/PHHcvPNN0tmZqa+d8KECTpOtAje+fPn
Zdu2bSpcRo8eLV26dMkWgVYb4okEOvWLbelz585FjQRGm2v+/PlVoFptswKFCJw7d66cOXNGypYt
q9vxY8aMsc1D3LlzZ1R+bva0a9dOjh07ptvP5cuXl7ffflt/Q/SykQAJkAAJ5D0BisC8Z84RDQJW
Edi9e3fN/+vdu7fccccdMnTo0KgRQkCEyLnnnns0GoaGiCG2kpFLB3GBhgWOreV169ZJ0aJFpWbN
mnrYAr+tLRbxhkjY+vXrZd68edkiMNIGNzHp5Hxrv24i0G2umJ+VT7SFB8G5detWPZFcuXJlee+9
9y55fN++fY783OzB4RZEUnft2iVVq1bl3wESIAESIIEAEKAIDIATUtEEUwSa26pODL766iuNPtk1
iJzBgwdLt27d9OVPP/1UGjVqZPsstiDbtGkjS5cu1Sjh0aNHpVatWnoKOSMjQ99jJwIXLFgg48aN
E0TBEJ1Eq1+/vopKNKsNsYpAt37dRGAsc7WzzW2trVmzRkU4ttKLFSt2yeNO/NzsgQhs3Lix5jm6
+dzNRr5OAiRAAiTgDQGKQG84spc4CURGAhFFql27tvzwww8q5CDsNmzY4NojRA6ukOnatas+e+DA
Abn66qs13w9bwdEaFj62Qfv166fj4gBKnTp1pG/fvtmng7GVipxEXNfSpEkTjSQihxBRQOQLmiIw
0gb8mbUfqx2x9GsVgdY+Y5mrlY8rUOMBNxFo9mHlB1EdjT3sZSQwFg/wGRIgARLIOwIUgXnHmiNF
EIgUgYiKQZAtWrRI8/MgCiG23JqdyOnQoYPm0k2aNEkqVqwoO3bskLFjx6pwW7t2reYDPvDAA7pt
jD/D9jPy1CDwkLNWpUoVGT9+vB6W2L9/v6Snp+uJ5Xr16snmzZv1AEm5cuWiikBrP9Z5xNKvVQTa
9RltroUKFdIopVWgWm1BHzisce2118o333yj28GY3/vvv38J/hUrVkTl52YPIrGIMEbmBGIs5gS6
rXS+TgIkQAKJIUARmBiu7NWFQKQIhFC58sor5amnnpK7775bf6ynWO26sxM5J06c0MMgqLSBiBu2
kp9++mkVeDj8MGXKFD1FjLzB6tWry6hRo6R9+/baPWyCCMIBEhwcQbQPdxXi5/jx43qK+NZbb9Wc
wmiRQLt+rPa79WsVgXZ9RpsrxotFBOLk83PPPaeHXuADcAIT5FFamxs/N3sgAJHriS1lbK0jlxJi
naeD+c8FCZAACfhDgCLQH+4pPyrLxqX8EiAAEiABEiABnwlQBPrsgFQdniIwVT3PeZMACZAACQSF
AEVgUDyRYnZQBKaYwzldEiABEiCBwBGgCAycS1LDIIrA1PAzZ0kCJEACJBBcAhSBwfVNqC2jCAy1
ezk5EiABEiCBJCBAEZgETgqjiRSBYfQq50QCJEACJJBMBCgCk8lbIbLVCxGI61pwpQt+0FCNAv+N
62FwMfH27dsDTyyWa1wSPYkff/xR7wY8cuSIlClTJtHDBbp/3COJK4XMK4ACbWwU41q2bKn3YeK6
JTYSIAEScCJAEci14QuBRIhAVPYYOXKk3uOHMmXJ0IIoAq3iOq85+jk+xjbvlczreXs5Hirv4AvR
119/zTJ9XoJlXyQQMgIUgSFzaLJMJxEicPjw4XoJ9OzZs20x2NUGRpk01AaGcDSrhjz//PNSvHhx
z1HajR9EEej5xP/q8PTp03LZZZc5dp+WlqbVXvxqW7ZskWbNmmkZwYIFC6oZffr00QonkW3y5Mky
cODAXJtptx5y0qlTPyjj99prr+mc2EiABEjAjgBFINeFLwQSIQL79++vW8IzZ86MWQTiA/LJJ5+U
unXrysGDB6Vz585aLWTOnDmec0l1EWgFiq3KK664Ql5//XXPWeekQ5TP27lzp8yfPz/77RCBKCH4
8ssv56TLqO9JtAh8+OGHJX/+/DJjxgzPbWeHJEAC4SBAERgOPybdLEwR+NJLLwkiK4cPH9aybKgZ
jN9oWVlZMmzYMFm8eLHWnG3QoIFMnz5d8/3QIrcNUX8WJdDMhvehHJrZUIYu8sMdos8u7wvj42fv
3r2eMnUaH5FA1NQFj40bN2pu3rRp06R58+Y6Pl5v1aqVvr5p0yYteYe5RuNissiXL5+y6tWrlz6P
/0dDpAs1k1FLGfWV+/XrJyhTZ+YEWrdj3WxE9BX9rVu3Tvt75JFH5LHHHnPNMXQSgXbjN27cWL78
8ktBtK5y5coa7cV4WDsoVwfxDvEP0RPL2rHj+sYbbwjGwXaw2XIrAp3Wt9N6cPOd1W78HYlskesa
EUwwATM2EiABErAjQBHIdeELAYga1KpFbV8k4yP6lpmZKQsXLpQJEyaoTR07dhRsIUL4lS5dWmsC
r169WsUSPuytYsFab9c6sVgiLxgTDYdL7FrPnj2jRgmt4jOyD6dIIOoSL1iwQFlA1EA44LAGRBs+
9FEDGVzwAY8tUzcu5pjnz5/XmsCdOnWS0aNHS5cuXfSlRo0aSdmyZeWVV15RAQVBAqbRRGA0GyHO
K1WqpHajv/vuu082bNjgqQjElwDkfF5zzTUqMPHfsBtb9z///LPOCeOjHnEsa8eOa40aNWTQoEHZ
B43QD0Tg3Llzte40mLVt21bGjBkTU84poorR1ne09ejkOzu7nfpZtGiR2o/1w0YCJEACFIFcA4Eh
ABFYvnx5qVmzpubj4XdkO3TokAoLRJnwHBq+sZQsWVIjQHjeaxGICNyoUaNUwFSpUsVzVk4isHv3
7io+0CC2SpUqJZh/hQoVVARC2EBcosXCxWo4xNH69etl3rx5smfPHqlataoKA4gatFWrVknTpk2j
ikAnG3///XepVq3aRYIPQr1JkyaeisAePXrI448/rvZ+8sknGrGD4Lz88sv1z7p27arrBfmdsTCy
ckUfdiLQZIlcxa1bt6pARCTyvffec10f+/btc1zfeHMsX0oifYf32NlNEejqCj5AAiTgQICRQC4N
XwiY28FLly7VSN/Ro0elVq1aMmDAAMnIyBCcbkR0x64tWbJEt1C9FIEQgM8++6x8+OGHcuONNyaE
SSw5gebhiV27dqlYw4f+4MGDpVu3bmpTLFwQVYQYQiTq5MmT+r769eureMZBGGwvR24j7t+/X3CI
IFokcMiQISq00CJthEjHFiYEmdms/TnBjGc7OHJ8bONDtEbOAeIMB3umTJkSEyMrV9iIPiFeI7eD
rbaD3x133KHpCcWKFXNdJ07r20kERvOdKQIj10M0McntYFf38AESSHkCFIEpvwT8AWA9GIKFiG03
5KchZw2iEMIEuYLYCrZr8YrAOnXqSN++fQVbupENggkRl5UrV8p1110XFUhutoPtxreeDrYTgZEC
6MCBA1G5IMKHCCK2SyFoIIyQ44goIMSTXSTQGrmzy8lzEoGAlReRwHhEoBsjU0xF9ok/w+lyiO/I
3NHcikDz/db1XaRIEbGuBzffOdnttK5xMAQpBU4Hpfz5m89RSYAEgkSAIjBI3kghWyACT506pfmA
uNQWW3kQKjhgcOzYMRUvHTp00CtDJk2apAcOduzYIWPHjtXnChUq5BoJRHQIUSmIO7R27drpNu/4
8eP1xCcatlnfeustfQZiJpHNbvx4RSDsi8YFAjo9PV23eOvVqyebN2/W3DkcODEPwiCHD1vsiMDa
5fDFIwIRrcQ4OIDilBNo9YPJOFGRQDdGWDt2V/Pg4E2LFi30S4i5PsAap4avvfZa+eabb3Q7GCzf
f/99nQZyEnG6effu3ZcsnRUrVkRd39b1gLXq5js7u+3WFYxBXxCA5iGjRK5t9k0CJJCcBCgCk9Nv
SW81RGDt2rV1+w4nXrGtWL16dc3Ja9++vc4PAgWHQXBIA1ESJNlHXuTrFgm0ig+MiT/DBzYOokD4
2W3pQSQgIud1s44PUZYTEejGZeLEiYIf5BfipDU4Ie/SFIHW07yxnA52igRCBOJqnYceekhPMCMK
idPITzzxhG6Z4r5FP0SgGyOn+xnBaujQoXoABA0nznHKHAdscJAJggtrFLmpaDgJ/ccff8ibb755
yXLBYZJo69tuPbj5zs5uu36w9Y8vV7gs2jwx7fV6Zn8kQALJT4AiMPl9mJQz8OKewKSceAoYvXz5
cs0fREQ32Rq2xiECYy0bh8MkH3zwgR4WCVJD3idSF8zT0kGyjbaQAAkEhwBFYHB8kVKWUASGx93I
ocP2KbYdcb8iBGDDhg31Cho2EiABEiCB4BKgCAyub0JtGUVgeNyLe/qwpfzRRx/plS24xxC5ctFK
xIVn9pwJCZAACSQvAYrA5PVdUltOEZjU7qPxJEACJEACISBAERgCJybjFCgCk9FrtJkESIAESCBM
BCgCw+TNJJoLRWASOYumkgAJkAAJhJIARWAo3Rr8SXkhAq1XxJw9e1avI8GVMri3bvv27cEHEYeF
uFMRV+SYJ1dbtmyp14Dgvj02EiABEiABEoiXAEVgvMT4vCcEEiECUSVj5MiReideiRIlPLEzSJ1A
9Ebek4gSchC9uAsOlSHYSIAESIAESCAeAhSB8dDis54RSIQIRNkvXIQ8e/ZsWzvtaveiFizKxkE4
okoJLgPGyVZcchxvs+s/3j7wvF0/W7ZskWbNmmk1i4IFC2Z3i9J6r732mr7GRgIkQAIkQALxEKAI
jIcWn/WMQCJEYP/+/QVbwk61Uu3EFcTTk08+KXXr1tXKF507d9ZqInPmzIl7rokUgShdtnPnzkvq
2qI+LCpCzJgxI257+QYSIAESIIHUJkARmNr+9232pghEvdnJkyfL4cOHtcTZ1KlT9TdaVlaW1vZd
vHixliBDzVvUu0W+H1pkTmDr1q21xJfZ8D6U+zIb6ufiUmOzQfTZVYXA+PjBpcd2zclep/5Nu7Bd
C7tRUg22mdu3KAOG6g7ggdq1mHNkM+2EWG3cuLFuB0e2V199VUUvIoVsJEACJEACJBAPAYrAeGjx
Wc8IQPSgFivqAePAA6JvmZmZsnDhQpkwYYKOg0uHUcMXwq906dJaRxhlvTZu3KjRL7fawVZjY4nU
YUw0HC6xNkTiotkbrf/z589r/dlOnTrJ6NGjpUuXLto9RCDqImPeEHxpaWm228EoTzZo0CDNAYxs
ixYtkj59+mgfbCRAAiRAAiQQDwGKwHho8VnPCEAEli9fXmrWrKn5ePgd2Q4dOiSVKlXSHD88h4bF
WrJkSVm3bp0+77UInDZtmowaNUo2bNggVapUuWSu+/btc7QXD8ciMhFJXL9+vcybNy9bBKK+K6KD
ZrPrhyLQs6XHjkiABEiABP4iQBHIpeALAXM7eOnSpRrpO3r0qNSqVUsGDBggGRkZgpOvjRo1srVt
yZIl0qZNG09FIATgs88+Kx9++KHceOONjkyc7HUSgQsWLNCDJ4ginjx5UvutX7++Clk0RAIHDx4s
3bp1iyoCmzZtKk2aNOF2sC+rlYOSAAmQQDgJUASG06+Bn5X1YAgW4ty5c7UGLU7AQhTi5CtyBbEV
bNfijQTWqVNH+vbtKz179ryoO4g0ROhWrlwp1113XUzsrPYWKVJErP1ji7ZChQqCq2sg4HD6GPmG
iAKa+YgQgUOGDJGuXbtmj2tnJ04+79q1y/ZgCPILnQ7DxDQZPkQCJEACJJCSBCgCU9Lt/k8aIvDU
qVOaD4gLj7H1C3HUu3dvOXbsmAqmDh06yLlz52TSpElSsWJF2bFjh4wdO1afK1SokGskEPlz+/fv
V3GHhutfsM07fvx4KVCggP4ZtmHfeustfaZatWqXgInsY8WKFVHttfaPsdPT02XVqlVSr1492bx5
s+AASbly5aKKQDs7cWikRYsWKpBN22Es+ocAbN68uf9OpQUkQAIkQAJJRYAiMKncFR5jIQJr164t
U6ZMkVmzZmnuX/Xq1TUnr3379jrREydO6GEQHNJAVA2HMiIvS3aLBFpFIMbEn+3evVsPokD4FStW
7BKoEJg4kIIW2ceZM2ei2mvtH9G+iRMn6s/x48f11DNsRg5ktEigXT+wBe8dOnSotG3bVm3DljIE
NC6LxkEZNhIgARIgARKIhwBFYDy0+KxnBLy4J9AzY5KkI5yMhgg0BSSulsHWNg6WsJEACZAACZBA
vAQoAuMlxuc9IUAR6AlGdkICJEACJEACOSZAEZhjdHxjbghQBOaGHt9LAiRAAiRAArknQBGYe4bs
IQcEKAJzAI1vIQESIAESIAEPCVAEegiTXcVOgCIwdlZ8kgRIgARIgAQSQYAiMBFU2acrAYpAV0R8
gARIgARIgAQS+NmOpgAABFBJREFUSoAiMKF42bkTAYpArg0SIAESIAES8JcARaC//FN2dIrAlHU9
J04CJEACJBAQAhSBAXFEqplBEZhqHud8SYAESIAEgkaAIjBoHkkReygCU8TRnCYJkAAJkEBgCVAE
BtY14TaMIjDc/uXsSIAESIAEgk+AIjD4PgqlhRSBoXQrJ0UCJEACJJBEBCgCk8hZYTKVIjBM3uRc
SIAESIAEkpEARWAyei0ENlMEhsCJnAIJkAAJkEBSE6AITGr3Ja/xFIHJ6ztaTgIkQAIkEA4CFIHh
8GPSzYIiMOlcRoNJgARIgARCRoAiMGQOTZbpUAQmi6doJwmQAAmQQFgJUASG1bMBnxdFYMAdRPNI
gARIgARCT4AiMPQuDuYEKQKD6RdaRQIkQAIkkDoEKAJTx9eBmilFYKDcQWNIgARIgARSkABFYAo6
PQhThgh8+umnZe3atUEwhzaQAAmQAAmQQMoRoAhMOZcHY8IUgcHwA60gARIgARJIXQIUganre19n
ThHoK34OTgIkQAIkQAJCEchF4AsBikBfsHNQEiABEiABEsgmQBHIxeALAYpAX7BzUBIgARIgARKg
COQa8JcARaC//Dk6CZAACZAACTASyDXgCwGKQF+wc1ASIAESIAESYCSQa8BfAhSB/vLn6CRAAiRA
AiTASCDXgC8EKAJ9wc5BSYAESIAESICRQK4BfwlQBPrLn6OTAAmQAAmQwJ9//in4yZcvn/6Y1bxO
nz6tcPIZL/5JTCTgNQGKQK+Jsj8SIAESIAESiJ+AKQLxTorA+PnxHTkgQBGYA2h8CwmQAAmQAAkk
kABFYALhsuu/CVAEcjWQAAmQAAmQQLAIUAQGyx+htQYLbfr06TJr1qzQzpETIwESIAESIIFkIpCZ
mSn169cX5gQmk9eS0FaIwDlz5sjw4cOT0HqaTAIkQAIkQALhI3Dw4EGKwPC5NXgzgghkIwESIAES
IAESCBYBRgKD5Q9aQwIkQAIkQAIkQAJ5RiB7O/j333/nFTF5hp0DkQAJkEDiCZw5c0aw7XPixAk5
f/584gcM4QhpaWlSrFgxqVChghQuXNh2huSce8eTc+4ZxtKDE+d8FIGx4OMzJEACJJAcBM6ePStf
f/21/POf/5QyZcrIP/7xj+QwPGBWQuAdOXJEfvrpJ7n22mulYMGCF1lIzt44jJy94ejWixNnikA3
cnydBEiABJKIwJ49e7IjWElkdmBN/e677yQrK0vS09MvspGcvXUZOXvL06k3K2eKwLzhzlFIgARI
IE8I4AqIjIwMRgA9oo0IytatW+WGG264qEdy9gjwX92Qs7c8nXqzcqYIzBvuHIUESIAE8oTApk2b
5NZbb82TsVJlkM8//1xuvvnmi6ZLzt57n5y9Z2rXYyRnisC8Yc5RSIAESCBPCFCceI+Z4sR7pm7i
xHyd69l79hSB3jNljyRAAiQQCAL80PTeDRSB3jOlCMwbpm6c/x8b2YsUVn1kTwAAAABJRU5ErkJg
gg==
--000000000000ffa5010607ec2128
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000ffa5010607ec2128--
