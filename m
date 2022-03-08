Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A734D0D21
	for <lists+usrp-users@lfdr.de>; Tue,  8 Mar 2022 01:58:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 940CA3845C0
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 19:58:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="tjaEeBHL";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C3113845C0
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 19:57:09 -0500 (EST)
Received: by mail-yb1-f171.google.com with SMTP id j2so34693142ybu.0
        for <usrp-users@lists.ettus.com>; Mon, 07 Mar 2022 16:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DlRmYl9jYfto+4FFKvqjrYLChv4OjjjjuK6GnPHVwqU=;
        b=tjaEeBHLBj5dd1N2LHKURmQl1BRc7h67ERgKkfqqRZZx35oUk6lfIqT3Ic/XwWRckW
         zrQjkT7fk9HPI0jvXk4D8BoI+SQZTblMc0vHINNfEx7KR3cMitCbWMiXOgtlha0J8to0
         c41QF5AjdWhAwnJhhDCrQ60jnPfpIi4MEpBj3rqIlYH3/Pb8zYSZzLyG95C5RFBhGDDO
         BpKB9qenZyra5V1NclS0qRsnV/bZrA0rsNAkjKdqmTxwyr5H8uvVdCo3Q7VM7pwZlyj0
         aXLSB9Fiah6aJZSBdwPFsOP8JsyUgIZ39zycSfvqHiJyNMQiBq/imNVXIJXZ3HwfJH0C
         CEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DlRmYl9jYfto+4FFKvqjrYLChv4OjjjjuK6GnPHVwqU=;
        b=o/6PcvwCWLR9ZG2WKakiFq5PxM+9pmtXRqrPwXsKYA553CfSzeyCRl78MoH6nfi2M8
         o4TY5ZzMCzeP1OLkSyDw+y5ykesgZp3Qw37rogwiZ225kbvZNq3SdYc8vazUbXk6Wgcc
         r0gwSCHPKsF5az66qw9Td+jOop84sdE7zKB/0xrvu17TklfVkIU5thA2a5RyIhHVUcEM
         jGGl5wrBeWTfxx4rBdpBuITfLxbStStmlKnl+fWBzTrE2sKmvbby3fNXMoJMK5rDfIYw
         K9r5H1zfoX/e9SpZeOdb6dP4IWjf76xxCYMgPkJKLFLY0i7cjvP9CY9CbPoPA2E8/dnk
         aBtg==
X-Gm-Message-State: AOAM533PG3X4mKUS+kK3norER321smPNgpVPSRXgKfqMYV/Awfk0vkvr
	f5MqD8euZUGG3Cr4khNrW6EnmVkdEj+9tDXX/e613yo9Bfd0QQ==
X-Google-Smtp-Source: ABdhPJw0o76Mvpg/1aB8o88hnW7Wd3ivZTaVDJpf5R31Ov6l2cGvsI6p96enfoxGJRczvd30vaNHxmIUQfvqhWRXkhE=
X-Received: by 2002:a25:1f87:0:b0:623:ed72:ff2a with SMTP id
 f129-20020a251f87000000b00623ed72ff2amr10064094ybf.96.1646701029388; Mon, 07
 Mar 2022 16:57:09 -0800 (PST)
MIME-Version: 1.0
References: <BY5PR09MB5491FC142DABDFF75F0B1DDDD9089@BY5PR09MB5491.namprd09.prod.outlook.com>
In-Reply-To: <BY5PR09MB5491FC142DABDFF75F0B1DDDD9089@BY5PR09MB5491.namprd09.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 7 Mar 2022 18:56:54 -0600
Message-ID: <CAFche=hozireUZY6Q-jNOqZpa9yECJZxhw2spDyXdw6fgz7XWA@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: IHNPLTIDGVIQNXXCOMD3A4W6GR2TMOPX
X-Message-ID-Hash: IHNPLTIDGVIQNXXCOMD3A4W6GR2TMOPX
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC dropping packets
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IHNPLTIDGVIQNXXCOMD3A4W6GR2TMOPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0817431285598667716=="

--===============0817431285598667716==
Content-Type: multipart/alternative; boundary="000000000000e8875305d9aa75dc"

--000000000000e8875305d9aa75dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

Can you describe the dataflow of your RFNoC graph (which blocks you're
using and how they're connected)? For example, is it: host -> SEP -> Your
Block -> Radio?

Could you try the latest version of UHD (v4.1.0.5)? There were many bug
fixes since the initial release of 4.0. You may also want to regenerate
your block to get a new noc_shell.

Those are very small packets (8 32-bit samples). That should be fine, but
maybe there's a corner case with really short packets. Maybe you could try
coalescing them into larger packets?

If I were debugging this, I'd use chipscope, maybe with some checker logic
like you described, to look at the data flowing from the ethernet interface
and follow that path to your block to see where the packets are getting
dropped. It would also confirm that the packets are making it into the
FPGA. But first I think updating to the latest version is a good idea so
we're not chasing a bug that's already been fixed.

Thanks,

Wade

On Mon, Mar 7, 2022 at 10:17 AM Jeffrey P Long <jplong@mitre.org> wrote:

> Hi-
>
>
>
> I have determined that somewhere upstream from my custom RFNOC component
> the fabric is intermittently dropping a fixed number of packets.
>
>
>
> I have a custom transmit waveform encapsulated in a single RFNOC
> component. This waveform component effectively takes about 8 32-bit sampl=
es
> of user data and produces an entire transmit burst of close to 5 msec in
> length at a sample rate of 50 MHz. Therefore, a fairly large =E2=80=9Cups=
ampling=E2=80=9D
> operation for a RFNOC block. This is a timed transmission, so I have
> interface logic that translates the CHDR info and single EOB to a series =
of
> packets with a timestamp on the first and the EOB set on the last packet
> along with the appropriate tlast set along the way. I can verify this wor=
ks
> well and will run without issues for about a few minutes on startup. I ha=
ve
> a similar RX component that receives this transmission in an analog
> loopback approach so I can verify the transmission. I have also inserted =
a
> packet number in my transmit data and have a checker(in the HDL) on the
> transmit side(upstream of my component) to check when there is an out of
> sequence happening. In chipscope I have it triggering when it happens so =
I
> can observe this behavior independent of the RX process.
>
>
>
> Setup: Ubuntu 20 LTS, E320, UHD 4.0.0.0-122-g75f2ba94
>
>
>
> Here are some things I have observed:
>
>
>
>    1. It will run without an issue for about 1-2 mins on startup. Clean
>    start or re-run does not matter.
>
>
>
>    1. It is always 34 source packets that are missing (each is 8 32 bit
>    samples in length) each time it drops.
>
>
>
>    1. This never happens back to back so it looks like something is
>    overflowing upstream however it is not perfectly periodic.
>
>
>
>    1. If I replace my core tx waveform processing with a simple fifo and
>    allow the 8 sample packets to flow through my processing(no upsampling=
) it
>    never drops anything. Obviously the large 1 to many and resultant stal=
ling
>    of the upstream is not making things happy.
>
>
>
>    1. This continues to happen if I totally disable the RX processing.
>
>
>
>    1. There is no indication of underruns or lates or other errors coming
>    from the tx_core downstream of my component. I verified also by chipsc=
oping
>    that component and looking for anything.
>
>
>
>
>
> Some things I have tried:
>
>
>
>    1. I did increase the (info, pyld) fifo sizes on the input side of my
>    components noc_shell. Did not change the behavior. I did not touch the
>    stream endpoint buffers.
>    2. I am generally running this in host mode however I did try cross
>    compiling the app and running embedded mode on the E320. Interesting
>    observation is that it then becomes exactly 33 packets that are lost e=
ach
>    time (weird or telling?).
>    3. If I insert usleeps in the while loop pushing down the data
>    (txstream->send()) I can change the behavior so that it happens less
>    frequently, takes longer to happen the first time, and the size of the
>    number lost can change from the 34 normally. In my HDL I increment the
>    timestamp by 50 msec so the obvious perfect sleep would be something l=
ike
>    50 msec minus the time rest of the code can take. Clearly this is hard=
 to
>    tune. Just setting 50 msec eventually causes a LLLLLLate condition. Th=
ere
>    is a sweet spot somewhere but without a RTOS this is a waste of time a=
nd
>    would not be the right way to fix this.
>
>
>
> Any help or insight (things to try) would be greatly appreciated. I am ou=
t
> of ideas. My final idea would be to put my own FIFO just in front with a
> level indicator. Fill it up halfway and then monitor it with a register t=
o
> keep it happy. Assuming I could keep up with this polling approach it
> should keep it happy unless there is a real bug upstream and someone is n=
ot
> obeying AXIS protocol. I would think this would be unnecessary however
> since RFNOC should not allow something like this to happen.
>
>
>
> Thanks in advance,
> Jeff Long
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e8875305d9aa75dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeff,</div><div><br></div><div>Can you describe th=
e dataflow of your RFNoC graph (which blocks you&#39;re using and how they&=
#39;re connected)? For example, is it: host -&gt; SEP -&gt; Your Block -&gt=
; Radio?<br></div><div><br></div><div>Could you try the latest version of U=
HD (v4.1.0.5)? There were many bug fixes since the initial release of 4.0. =
You may also want to regenerate your block to get a new noc_shell.<br></div=
><div><br></div><div>Those are very small packets (8 32-bit samples). That =
should be fine, but maybe there&#39;s a corner case with really short packe=
ts. Maybe you could try coalescing them into larger packets?</div><div><br>=
</div><div>If I were debugging this, I&#39;d use chipscope, maybe with some=
 checker logic like you described, to look at the data flowing from the eth=
ernet interface and follow that path to your block to see where the packets=
 are getting dropped. It would also confirm that the packets are making it =
into the FPGA. But first I think updating to the latest version is a good i=
dea so we&#39;re not chasing a bug that&#39;s already been fixed.</div><div=
><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar =
7, 2022 at 10:17 AM Jeffrey P Long &lt;<a href=3D"mailto:jplong@mitre.org">=
jplong@mitre.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_1560697624454512504WordSection1">
<p class=3D"MsoNormal">Hi-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have determined that somewhere upstream from my cu=
stom RFNOC component the fabric is intermittently dropping a fixed number o=
f packets.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have a custom transmit waveform encapsulated in a =
single RFNOC component. This waveform component effectively takes about 8 3=
2-bit samples of user data and produces an entire transmit burst of close t=
o 5 msec in length at a sample rate
 of 50 MHz. Therefore, a fairly large =E2=80=9Cupsampling=E2=80=9D operatio=
n for a RFNOC block. This is a timed transmission, so I have interface logi=
c that translates the CHDR info and single EOB to a series of packets with =
a timestamp on the first and the EOB set on the
 last packet along with the appropriate tlast set along the way. I can veri=
fy this works well and will run without issues for about a few minutes on s=
tartup. I have a similar RX component that receives this transmission in an=
 analog loopback approach so I can
 verify the transmission. I have also inserted a packet number in my transm=
it data and have a checker(in the HDL) on the transmit side(upstream of my =
component) to check when there is an out of sequence happening. In chipscop=
e I have it triggering when it happens
 so I can observe this behavior independent of the RX process.<u></u><u></u=
></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Setup: Ubuntu 20 LTS, E320, UHD 4.0.0.0-122-g75f2ba9=
4<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Here are some things I have observed:<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"1">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">It will run without an issue for about 1-2 mins on startup. Clean =
start or re-run does not matter.<u></u><u></u></li></ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"2">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">It is always 34 source packets that are missing (each is 8 32 bit =
samples in length) each time it drops.<u></u><u></u></li></ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"3">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">This never happens back to back so it looks like something is over=
flowing upstream however it is not perfectly periodic.<u></u><u></u></li></=
ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"4">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">If I replace my core tx waveform processing with a simple fifo and=
 allow the 8 sample packets to flow through my processing(no upsampling) it=
 never drops anything. Obviously the large
 1 to many and resultant stalling of the upstream is not making things happ=
y.<u></u><u></u></li></ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"5">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">This continues to happen if I totally disable the RX processing.<u=
></u><u></u></li></ol>
<p class=3D"gmail-m_1560697624454512504MsoListParagraph"><u></u>=C2=A0<u></=
u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"6">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">There is no indication of underruns or lates or other errors comin=
g from the tx_core downstream of my component. I verified also by chipscopi=
ng that component and looking for anything.<u></u><u></u></li></ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Some things I have tried:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<ol style=3D"margin-top:0in" type=3D"1" start=3D"1">
<li class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-l=
eft:0in">I did increase the (info, pyld) fifo sizes on the input side of my=
 components noc_shell. Did not change the behavior. I did not touch the str=
eam endpoint buffers.<u></u><u></u></li><li class=3D"gmail-m_15606976244545=
12504MsoListParagraph" style=3D"margin-left:0in">I am generally running thi=
s in host mode however I did try cross compiling the app and running embedd=
ed mode on the E320. Interesting observation is that it then becomes exactl=
y 33
 packets that are lost each time (weird or telling?).<u></u><u></u></li><li=
 class=3D"gmail-m_1560697624454512504MsoListParagraph" style=3D"margin-left=
:0in">If I insert usleeps in the while loop pushing down the data (txstream=
-&gt;send()) I can change the behavior so that it happens less frequently, =
takes longer to happen the first time,
 and the size of the number lost can change from the 34 normally. In my HDL=
 I increment the timestamp by 50 msec so the obvious perfect sleep would be=
 something like 50 msec minus the time rest of the code can take. Clearly t=
his is hard to tune. Just setting
 50 msec eventually causes a LLLLLLate condition. There is a sweet spot som=
ewhere but without a RTOS this is a waste of time and would not be the righ=
t way to fix this.<u></u><u></u></li></ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any help or insight (things to try) would be greatly=
 appreciated. I am out of ideas. My final idea would be to put my own FIFO =
just in front with a level indicator. Fill it up halfway and then monitor i=
t with a register to keep it happy.
 Assuming I could keep up with this polling approach it should keep it happ=
y unless there is a real bug upstream and someone is not obeying AXIS proto=
col. I would think this would be unnecessary however since RFNOC should not=
 allow something like this to happen.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks in advance,<br>
Jeff Long<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e8875305d9aa75dc--

--===============0817431285598667716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0817431285598667716==--
