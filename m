Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1B19F7A57
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 12:24:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A0DC3858D5
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 06:24:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734607479; bh=75eAiGDFCVu55TBx8kMrOWA4KfGMcpK0gwdbaq/wBXA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N41paDYHtROIVA5EgSGHiiwxd8OT7uFyOBw0OIl8TO0kLVe1yALEJgFj/ZlmZi3Ue
	 ubsJM0lOQxQOBnLN3W4vLNZMhNguhtdVkDvrdfx4Q759ZeVbHLkuorauh81mGSFLTB
	 IcHzfclLD9tTsMGCeJNo7vzvzyTRwEC3jKsVRNbUewWnOyLalSMPD9yZrJquAuZHRT
	 CxtTms0mJjtfs5uFDFk4AMoEs76he1l8yyi6mXpNTXHEgF3U04duBJYA04xpcB1QXG
	 NYr7r5UHBv/M6Nh3U69+/T8X7lag00yE1k4a31pO34k41ix0YyJ0zbdzHN3Is0ct9H
	 I1h4MY7dnAKBw==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 56BB338576B
	for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 06:23:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="3VhFbxsp";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e399e904940so518450276.2
        for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 03:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734607416; x=1735212216; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RJ5hxqSM5Gk27fndsmG8Dv+Dc+6PI5I5Xa8a7LrPMTQ=;
        b=3VhFbxspTqiq1neLkZcSvY/fl3d5BVaope67MDy3lVRmCBRE6TqiavPlPilDhniXBt
         Ar8WtxJWtKiFvcUuLxpR62B8S5rRC7xb9AKX+Br4LSnjW2SGKho13t/tNdzowJVnwa82
         hrRQKv2juddtRFZuetIMhPtC0FDw3rqDhdwkiFIIO4mN1rRXDriXu139UA8vdoaI/sgD
         pUY0MsjlfZS39Pml1CR2T5l5c/ZkP7mGszZO2cvWMpgHIR631ZJYlL520cKbCmbIzHER
         ptObxL09kugt3qPMhis92yEeMsN+8MK6rPec0BJwBSWa1ab247OBWqB38fZ/9jBFPWlA
         bOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734607416; x=1735212216;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RJ5hxqSM5Gk27fndsmG8Dv+Dc+6PI5I5Xa8a7LrPMTQ=;
        b=qwA3tnl/3u8hWMppShnafatTv7nlkWyuO/6Zhc+Qil1EdrfFPERSxnsZwkUjqxwnfJ
         Mm5jFVMt14ghYi1lckEyxbgBhKWRHt3ZDRDkyED7ntQ1Y0Mz3Xa3jzLLk0vZOhdUu1iO
         RzXgeQASYYxAAtC1R7RObEzqz3ofm3fI9OUTSOF7ohV9JCxICfEgp3jhHrPMKxWDuvs9
         0ZiwEu5Nng7MsuSuCjCXNuutGwWzEqA382M2B6J8zoB/RxghKzL3S5ygf6gn/Meg+XbT
         cLeY7aBLycuwzv7LRi2TEVjWdiR6axEiGeH0m0E9tCiGHmIgzKqPGDf3CvuOo5qmYV5H
         KXaA==
X-Gm-Message-State: AOJu0YxJytD9vpoU4A97Ez/TApli2/SjXhcim5Ve1Cb8QNLrEImBPi3J
	UI/9j98ypD2ubgJ5zeYJh2tuVf2EljtPJ+F44ZXjSsHjWv8x+gcXBBUKcUi0ZkJBqDgi+AbfVej
	/SbY11j2je2FBM0DKJcr91D1TZ3qJrbASPNVkes8FnRD2BZ2J4n0=
X-Gm-Gg: ASbGncv5FMh6TXNIP8aRkBRyRdllO66vIKDz8VPX32YWDqjeU0j2HL2ob/Z0BL6XVv/
	NiqRgf/wLOOGrqmvZQm/6t0G6adAPQLtufrxh
X-Google-Smtp-Source: AGHT+IG7rjwkVXuDXzfvDVhRF2fIK+yeZerOxUfuQaieoLJrT++XBXvnwZzFNC4Sau+7gUKsuAGD9jUSMLt0lJSF7SU=
X-Received: by 2002:a05:6902:18cc:b0:e4e:551e:fd0c with SMTP id
 3f1490d57ef6-e53622033a5mr4526399276.42.1734607413864; Thu, 19 Dec 2024
 03:23:33 -0800 (PST)
MIME-Version: 1.0
References: <CAE=q3UPVjJMaehJ=FN7gtNvHgPXBOoXyPqhAfDMkKb1XEg8ErA@mail.gmail.com>
In-Reply-To: <CAE=q3UPVjJMaehJ=FN7gtNvHgPXBOoXyPqhAfDMkKb1XEg8ErA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Dec 2024 12:23:19 +0100
Message-ID: <CAFOi1A63WnfL1k5UiuL9hV07-uMg-fJBEXDcn3H+eiaoZZX8zA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: AAKAFSTIAG45QPUSZ56WQEVVRV2Q7AK7
X-Message-ID-Hash: AAKAFSTIAG45QPUSZ56WQEVVRV2Q7AK7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Two Channel DDC Synchronization With C++ RFNoC API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAKAFSTIAG45QPUSZ56WQEVVRV2Q7AK7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2458434202965571464=="

--===============2458434202965571464==
Content-Type: multipart/related; boundary="000000000000baf2c306299dc25d"

--000000000000baf2c306299dc25d
Content-Type: multipart/alternative; boundary="000000000000baf2c206299dc25c"

--000000000000baf2c206299dc25c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey David,

this looks like you've gotten pretty far on a sophisticated project!  I
have a few observations:

- At first glance, your C++ looks correct.
- I would expect samples to arrive at your block synchronously based on
that. However, maybe I'm forgetting something that would cause the outputs
of the DDCs to misalign data by a few clock cycles. Which makes me wonder:
Are you sure your input packets are misaligned? In RFNoC, we make no
guarantee that the output of the DDC (or any other) block is aligned to the
clock cycle, because we encode the timestamp with the data. Meaning that
the first, actual sample that arrives at your block on each channel is in
fact time-aligned, they just arrive a few clock cycles apart. This is the
same logic that applies when packets arrive at the host computer, where we
make no assumptions that they arrive at the exact same time.
- If this is the issue, I think we have some modules you can use to
actually align samples within your block, or you just do some AXI alignment
yourself by combining the tready and tvalid signals of two streams.
- Side note, although it's not important: I would consider it a best
practice to have your block call
set_action_forwarding_policy(forwarding_policy_t::ONE_TO_FAN, "stream_cmd")
so it would properly forward stream commands, and then you can plop the
stream command into the streamer.

--M

On Sun, Dec 15, 2024 at 10:49=E2=80=AFPM David <vitishlsfan21@gmail.com> wr=
ote:

> Hello all,
>
> I apologize in advance for data dumping. I have made a 2 input/1 output
> RFNoC block that requires repeatable synchronized DDC starts. My current
> method of starting the DDC is not working as desired.
>
> *Question - **How can I correctly start both DDC's so samples are
> available on the same clock cycle, similar to the rx_samples_to_file, whi=
le
> still using my 2 in/1 out RFNoC block? *
> I would like to focus the conversation on my C++ implementation for now.
> All my simulations have convinced me my block is consuming AXI-Stream dat=
a
> correctly.
>
> *Problem*
> When starting two DDCs with timed commands sent to DDC in my C++
> application, I am not getting the same result as the
> rx_samples_to_file.cpp... rx_samples_to_file has repeatable alignment, an=
d
> mine has random. This has led me to believe the problem is in my
> application and not my block. My Vivado simulations show my block is able
> to consume the AXI-Stream transactions in parallel as I expect.
>
> Considering sampling noise from a sig gen that is split to both inputs, I
> see the following behavior:
> rx_samples_to_file (base image) davids_samples_to_file (custom image)
> DDC A samples ... X_1 Y_1 Z_1 ... DDC A samples ... X_1 Y_1 Z_1 ...
> DDC B samples ... X_2 Y_2 Z_2 ... DDC B samples X_2 Y_2 Z_2 ... ...
>
> *sample_1 is not equal to sample_2, but over a large number of samples
> they will correlate well.
>
> In the above example, the noise correlates as expected, but it is delayed
> by 1 sample. When using my application, I have seen no delay (desired), a=
nd
> also delay in the range of 5 samples.
>
> *C++ Implementation*
> [image: image.png]
>
> I am using* uhd::rfnoc::ddc_block_control* types to issue the stream
> command because I was having issues with my block propagating. Issuing to
> the DDCs lets the data flow from 2 inputs to the 1 output, where the outp=
ut
> is either a file or loopback to transmit.
>
> The base image with rx_samples_to_file uses a multi_usrp type, which
> propagates the stream command from the rx_streamer.
>
> *RFNoC laydown*
>
> [image: image.png]
>
> Data flows in both Tx loopback configuration and Rx to file configuration=
.
>
> *Methods and Symptoms*
> I have two methods of measuring the synchronization, with data collected
> by ILA cores at either the output of DDC or input of custom block:
>
>    1. *Math: *When receiving correlated noise, I can measure the cross
>    correlation and show that the correlation peaks as expected, and show =
the
>    delay between channels in samples.
>    2. *Vivado Waveform Viewer*: When the ILA cores are collecting DDC
>    channel data, I can see that the base image samples are available on t=
he
>    same clock. My image does not have that behavior.
>
>
> Thanks,
>
> David
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000baf2c206299dc25c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey David,</div><div><br></div><div>this looks like y=
ou&#39;ve gotten pretty far on a sophisticated project!=C2=A0 I have a few =
observations:<br></div><div><br></div><div>- At first glance, your C++ look=
s correct.</div><div>- I would expect samples to arrive at your block synch=
ronously based on that. However, maybe I&#39;m forgetting something that wo=
uld cause the outputs of the DDCs to misalign data by a few clock cycles. W=
hich makes me wonder: Are you sure your input packets are misaligned? In RF=
NoC, we make no guarantee that the output of the DDC (or any other) block i=
s aligned to the clock cycle, because we encode the timestamp with the data=
. Meaning that the first, actual sample that arrives at your block on each =
channel is in fact time-aligned, they just arrive a few clock cycles apart.=
 This is the same logic that applies when packets arrive at the host comput=
er, where we make no assumptions that they arrive at the exact same time.</=
div><div>- If this is the issue, I think we have some modules you can use t=
o actually align samples within your block, or you just do some AXI alignme=
nt yourself by combining the tready and tvalid signals of two streams.<br><=
/div><div>- Side note, although it&#39;s not important: I would consider it=
 a best practice to have your block call set_action_forwarding_policy(forwa=
rding_policy_t::ONE_TO_FAN, &quot;stream_cmd&quot;) so it would properly fo=
rward stream commands, and then you can plop the stream command into the st=
reamer.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail=
_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun,=
 Dec 15, 2024 at 10:49=E2=80=AFPM David &lt;<a href=3D"mailto:vitishlsfan21=
@gmail.com">vitishlsfan21@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello =
all,<div><br></div><div>I apologize in advance for=C2=A0data=C2=A0dumping. =
I have made a 2 input/1 output RFNoC block that requires repeatable synchro=
nized DDC starts. My current method of starting the DDC is not working as d=
esired.</div><div><br></div><div><b><u>Question</u>=C2=A0-=C2=A0</b><b>How =
can I correctly start both DDC&#39;s so samples are available on the same c=
lock cycle, similar to the rx_samples_to_file, while still using my 2 in/1 =
out RFNoC block?=C2=A0</b></div><div>I would like to focus the conversation=
 on my C++ implementation for now. All my simulations have convinced me my =
block is consuming AXI-Stream data correctly.</div><div><br></div><div><b><=
u>Problem</u></b></div><div>When starting two DDCs with=C2=A0timed commands=
 sent to DDC in my C++ application,<i>=C2=A0</i>I am not getting the same r=
esult as the rx_samples_to_file.cpp... rx_samples_to_file has repeatable al=
ignment, and mine has random. This has led me to believe the problem is in =
my application and not my block. My Vivado simulations show my block is abl=
e to consume the AXI-Stream transactions in parallel as I expect.</div><div=
><br></div><div>Considering sampling noise from a sig gen that is split to =
both inputs, I see the following behavior:=C2=A0</div><div><table cellspaci=
ng=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:f=
ixed;font-size:10pt;font-family:Arial;width:0px;border-collapse:collapse;bo=
rder:medium"><colgroup><col width=3D"100"><col width=3D"100"><col width=3D"=
100"><col width=3D"100"><col width=3D"100"><col width=3D"100"><col width=3D=
"23"><col width=3D"100"><col width=3D"100"><col width=3D"100"><col width=3D=
"100"><col width=3D"100"><col width=3D"100"></colgroup><tbody><tr style=3D"=
height:21px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidden;paddi=
ng:2px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:2px 3px;vertical-align:bottom;font-size:12pt;font-=
weight:bold;text-align:center" rowspan=3D"1" colspan=3D"5">rx_samples_to_fi=
le (base image)</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:2px 3px;vertical-align:bottom;background-color:rgb(0,0,0)"></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0=
,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:2px 3px;vertical-align:bottom;font-size:12pt;font-weight:bold;text-align=
:center" rowspan=3D"1" colspan=3D"5">davids_samples_to_file (custom image)<=
/td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:2px 3px;vertical-align:bottom;font-weight:bold">DDC A samples</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px=
;vertical-align:bottom;font-size:14pt">...</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom">X_1</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3=
px;vertical-align:bottom">Y_1</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:2px 3px;vertical-align:bottom">Z_1</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-=
align:bottom;font-size:14pt">...</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:2px 3px;vertical-align:bottom;background-color=
:rgb(0,0,0)"></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:2px 3px;vertical-align:bottom;font-weight:bold">DDC A samples</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px=
;vertical-align:bottom;font-size:14pt">...</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom">X_1</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3=
px;vertical-align:bottom">Y_1</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:2px 3px;vertical-align:bottom">Z_1</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-=
align:bottom;font-size:14pt">...</td></tr><tr style=3D"height:21px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:2px 3px;vertical-align:bottom;fo=
nt-weight:bold">DDC B samples</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:2px 3px;vertical-align:bottom;font-size:14pt">...=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px=
 3px;vertical-align:bottom">X_2</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:2px 3px;vertical-align:bottom">Y_2</td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical=
-align:bottom">Z_2</td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:2px 3px;vertical-align:bottom;font-size:14pt">...</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertic=
al-align:bottom;background-color:rgb(0,0,0)"></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom;fon=
t-weight:bold">DDC B samples</td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:2px 3px;vertical-align:bottom">X_2</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-=
align:bottom">Y_2</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:2px 3px;vertical-align:bottom">Z_2</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:2px 3px;vertical-align:bottom;=
font-size:14pt">...</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:2px 3px;vertical-align:bottom;font-size:14pt">...</td></tr>=
</tbody></table></div><div><b><u><br></u></b></div><div>*sample_1 is not eq=
ual to sample_2, but over a large number of samples they will correlate wel=
l.=C2=A0</div><div><br></div><div>In the above example, the noise correlate=
s as expected, but it is delayed by 1 sample. When using my application, I =
have seen no delay (desired), and also delay in the range of 5 samples.=C2=
=A0</div><div><br></div><div><b><u>C++ Implementation</u></b></div><div><im=
g src=3D"cid:ii_m4q2yje80" alt=3D"image.png" width=3D"562" height=3D"98"><b=
r></div><div><br></div><div>I am using<b><i> uhd::rfnoc::ddc_block_control<=
/i></b> types to issue the stream command because I was having issues with =
my block propagating. Issuing=C2=A0to the DDCs lets the data flow from 2 in=
puts to the 1 output, where the output is either a file or loopback to tran=
smit.</div><div><br></div><div>The base image with rx_samples_to_file uses =
a multi_usrp type, which propagates the stream command from the rx_streamer=
.</div><div><br></div><div><u style=3D"font-weight:700">RFNoC laydown</u><b=
></b></div><div><u style=3D"font-weight:700"><br></u></div><div><img src=3D=
"cid:ii_m4q46qnx1" alt=3D"image.png" width=3D"562" height=3D"279"><br></div=
><div><br></div><div>Data flows in both Tx loopback configuration and Rx to=
 file configuration.</div><div><br></div><div><b><u>Methods and Symptoms</u=
></b></div><div>I have two methods of measuring the synchronization, with d=
ata collected by ILA cores at either the output of DDC or input of custom b=
lock:=C2=A0</div><div><ol><li><b>Math: </b>When receiving correlated noise,=
 I can measure the cross correlation and show that the correlation peaks as=
 expected, and show the delay between channels in samples.</li><li><b>Vivad=
o Waveform Viewer</b>: When the ILA cores are collecting DDC channel data, =
I can see that the base image samples are available on the same clock. My i=
mage does not have that behavior.</li></ol></div><div><br></div><div>Thanks=
,</div><div><br></div><div>David</div><div><b><u><br></u></b></div><div><b>=
<u><br></u></b></div><div><b><u><br></u></b></div></div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000baf2c206299dc25c--

--000000000000baf2c306299dc25d
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m4q2yje80>
X-Attachment-Id: ii_m4q2yje80

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
TkSuQmCC
--000000000000baf2c306299dc25d
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m4q46qnx1>
X-Attachment-Id: ii_m4q46qnx1

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
/wFcyU91g2dqXAAAAABJRU5ErkJggg==
--000000000000baf2c306299dc25d--

--===============2458434202965571464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2458434202965571464==--
