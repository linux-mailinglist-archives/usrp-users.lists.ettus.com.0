Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99144184C7A
	for <lists+usrp-users@lfdr.de>; Fri, 13 Mar 2020 17:28:15 +0100 (CET)
Received: from [::1] (port=57352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jCnAU-0002qI-63; Fri, 13 Mar 2020 12:28:14 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:32979)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jCnAP-0002ga-Dx
 for usrp-users@lists.ettus.com; Fri, 13 Mar 2020 12:28:09 -0400
Received: by mail-ot1-f54.google.com with SMTP id g15so10709226otr.0
 for <usrp-users@lists.ettus.com>; Fri, 13 Mar 2020 09:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LMyDMYI+8Lr2art119ocCJhBPPgJnz/Ld9K4WUtw4MU=;
 b=UoIsfFW8ZiYNQOtg6H8oFdiT+N1DaTcn1+hB4UbjL8R3W+1enGEfSsRpWNpj3HILZu
 d6dmR4QprkDCFCHE+9L5EznuYIZPedPWJcDNCZA0NzIIKz8ug1klMlv5NODRnyfBt9Lg
 86lbw45BgjD55VMuB1gdpZSXnFgMQ26UcijaPdOcUYbDUuKy2qIk3GTWu+oVduOokGjB
 A1ABbq9YAFC5tfxMmk4m25uCKF7NdQU3voku5LiJt9V7tLfPMI0e5O58O7M3pIj8EAs4
 mAEOINxj7cK22byv+IRdtbqOx1/QKPJ9ybz5jbeCreMwFd5uiHdR3fGgGNVAeCURJYtu
 srIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LMyDMYI+8Lr2art119ocCJhBPPgJnz/Ld9K4WUtw4MU=;
 b=Vm3D0c5waHEgUuwmH6ie9cn8wKENXFQgp26KbzyKOSe62jgy8GLZqVGjIBpbnqCA8x
 w0B3SwIjMK80+s+rEepwORVhhs0/FwByQWBLg4luIErcyUcoJgwAGtsgCUXckzpssxaq
 SehQA8sNX+Cmxkl2twuzokFLYREXV4VWIb/X4aHxZBKV+HGKhBMLACOrfdAe6Mxih035
 tbW61eSTqMpFvGESQMExpFBfHmS5XWsJgroRU/IHO2O+nUWyYYSdyQqNRYJ0rEnY9S1Y
 VnHQ6qW/1Zjw5m9WxY/rjXumABuXQ8b8ptpPG93eA4+/eU+d0VIRT4zO2k5a2Rqtey0+
 b6xQ==
X-Gm-Message-State: ANhLgQ1XxQhZKdrX5N9oiK7vVdiRb+BhhkxBUwBRMrmgzKoq8KEW5fop
 85uNo1FSQKUpI3navuC9PigNFgBxwxT8LkhNd6+Wcg==
X-Google-Smtp-Source: ADFU+vu8fni6y8uDSbFUvITwPAO9D3S+6iJlVhlUwSwUllhzYa35HlWTaT9KIk7Wj8qU/idFl68h+u0mBAdQCdOXfJM=
X-Received: by 2002:a9d:171e:: with SMTP id i30mr11892156ota.327.1584116848510; 
 Fri, 13 Mar 2020 09:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <CAB__hTSCG9vJDyfos8Vo51uun6+GVO0z2MKiAnwB5RxbQroHug@mail.gmail.com>
 <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
In-Reply-To: <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
Date: Fri, 13 Mar 2020 12:27:17 -0400
Message-ID: <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6436969284732435062=="
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

--===============6436969284732435062==
Content-Type: multipart/alternative; boundary="0000000000000a06d705a0bef2b8"

--0000000000000a06d705a0bef2b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, great.  I am trying to think of ways to now add the phase measurement.
Ideas...

   - In order to get consistent phase, you would need to tune Rx and Tx DSP
   at the same time (rather than below where you are only tuning one of
   them).  So, assuming that this will not produce consistent phase results=
,
   then maybe try the following idea...
   - If you want to check just Rx DSP tuning (with fixed Tx DSP tuning),
   you could try a 2 channel Rx measurement where the Tx is split externall=
y
   with 1:2 splitter in order to drive both Rx0 and Rx1.  Then, measure the
   relative phase Rx0/Rx1 and then tune back and forth between two Rx DSP
   freqs to see if the relative phase on Rx remains constant.  If so, this
   would give you good confidence that Rx DSP tuning is indeed happening
   synchronously
   - Assuming that the Rx IS synchronous in the step above (perhaps a bad
   assumption, but here goes), you could then check TX DSP tuning (with fix=
ed
   Rx DSP tuning) by using two Tx and two Rx channels with Tx0 connected to
   Rx0 and Tx1 connected to Rx1.  At this point we are confident that Rx DS=
P
   tuning is synchronous so any synchronous misbehavior would imply a Tx sy=
nc
   problem.

Sorry I can't think of better ideas.
Rob

On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase <lukashaase@gmx.at> wrote:

> Hi Rob,
>
> 1.) yes, works(*)
> 2.) yes, works(*)
>
> (*): qualitatively. I set the timed command to "get_current_time() +
> uhd.time_spec(2.0)" and I see the chance 2 seconds after my click on the
> screen. I cannot (do not know how) check if it actually happens at
> sample-precicse location.
>
> Great, any ideas to simplify the setup would nice. I just don't know how =
I
> could continue to debugging the phase.
>
> Best,
> Luke
>
>
> Gesendet: Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr
> Von: "Rob Kossler" <rkossler@nd.edu>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Cc: "Marcus D Leech" <patchvonbraun@gmail.com>, "
> USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Betreff: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using
> a timed command
>
> Thanks Lukas,
> I wanted to confirm that you did not have an older version of FPGA
> firmware because there was a DDC/DUC bug fix[
> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b=
1c6798771e6d]
> related to phase.  However, the version you provided with uhd_usrp_probe
> confirms that you have the bug fix included.  So, this is not the problem=
.
>
> From what you said, I assume that you can successfully do the following:
> 1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not
> change TX RF) and you can see the frequency change at the specified comma=
nd
> time (i.e., if you specify the command time 1 sec in the future, the chan=
ge
> does not occur until 1 sec in the future).
> 2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can see
> the frequency change at the specified command time.
>
> I am trying to simplify the issue by removing RF tuning completely and by
> tuning only 1 of Rx/Tx at a time.  Perhaps this will help lead to the
> answer.
> Rob
>
>
>
> On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase <lukashaase@gmx.at[mailto:
> lukashaase@gmx.at]> wrote:Hi again Rob,
>
> Yes, I confirm:
>
> 1.) Finally I get the commands to execute at the same time (TX and RX
> individually and both at the same time)
> 2.) Yes, the phase is random after each retune, even when I retune back t=
o
> the same frequency
> 3.) (2) is only true if it includes *DSP* retuning. With naalog retuning
> (+integer-N retuning) I get phase coherence, as expected.
>
> I actually expected the PLL retuning much more challenging than the DSP
> retuning but for some reason it seems to be the opposite...
>
> Thanks,
> Lukas
>
>
>
>

--0000000000000a06d705a0bef2b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ok, great.=C2=A0 I am trying to think of ways to now =
add the phase measurement.=C2=A0 Ideas...</div><div><ul><li>In order to get=
 consistent phase, you would need to tune Rx and Tx DSP at the same time (r=
ather than below where you are only tuning one of them).=C2=A0 So, assuming=
 that this will not produce consistent phase results, then maybe try the fo=
llowing idea...</li><li>If you want to check just Rx DSP tuning (with fixed=
 Tx DSP tuning), you could try a 2 channel Rx measurement where the Tx is s=
plit externally with 1:2 splitter in order to drive both Rx0 and Rx1.=C2=A0=
 Then, measure the relative phase Rx0/Rx1 and then tune back and forth betw=
een two Rx DSP freqs to see if the relative phase on Rx remains constant.=
=C2=A0 If so, this would give you good confidence that Rx DSP tuning is ind=
eed happening synchronously</li><li>Assuming that the Rx IS synchronous in =
the step above (perhaps a bad assumption, but here goes), you could then ch=
eck TX DSP tuning (with fixed Rx DSP tuning) by using two Tx and two Rx cha=
nnels with Tx0 connected to Rx0 and Tx1 connected to Rx1.=C2=A0 At this poi=
nt we are confident that Rx DSP tuning is synchronous so any synchronous mi=
sbehavior would imply a Tx sync problem.</li></ul><div>Sorry I can&#39;t th=
ink of better ideas.=C2=A0=C2=A0</div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 13, 2020 at=
 12:12 PM Lukas Haase &lt;<a href=3D"mailto:lukashaase@gmx.at">lukashaase@g=
mx.at</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi Rob,<br>
<br>
1.) yes, works(*)<br>
2.) yes, works(*)<br>
<br>
(*): qualitatively. I set the timed command to &quot;get_current_time() + u=
hd.time_spec(2.0)&quot; and I see the chance 2 seconds after my click on th=
e screen. I cannot (do not know how) check if it actually happens at sample=
-precicse location.<br>
<br>
Great, any ideas to simplify the setup would nice. I just don&#39;t know ho=
w I could continue to debugging the phase.<br>
<br>
Best,<br>
Luke<br>
<br>
<br>
Gesendet:=C2=A0Freitag, 13. M=C3=A4rz 2020 um 11:08 Uhr<br>
Von:=C2=A0&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd.edu" ta=
rget=3D"_blank">rkossler@nd.edu</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Cc:=C2=A0&quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;, &quot;<a href=3D=
"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettu=
s.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 ignored DSP retuning on TX when us=
ing a timed command<br>
<br>
Thanks Lukas,<br>
I wanted to confirm that you did not have an older version of FPGA firmware=
 because there was a DDC/DUC bug fix[<a href=3D"https://github.com/EttusRes=
earch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/EttusResearch/fpga/commit/0b236465=
3405612a6d5dfaa0e69b1c6798771e6d</a>] related to phase.=C2=A0 However, the =
version you provided with uhd_usrp_probe confirms that you have the bug fix=
 included.=C2=A0 So, this is not the problem.=C2=A0<br>
=C2=A0<br>
From what you said, I assume that you can successfully do the following:<br=
>
1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not cha=
nge TX RF) and you can see the frequency change at the specified command ti=
me (i.e., if you specify the command time 1 sec in the future, the change d=
oes not occur until 1 sec in the future).<br>
2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can see t=
he frequency change at the specified command time.<br>
=C2=A0<br>
I am trying to simplify the issue by removing RF tuning completely and by t=
uning only 1 of Rx/Tx at a time.=C2=A0 Perhaps this will help lead to the a=
nswer.<br>
Rob<br>
=C2=A0<br>
=C2=A0=C2=A0<br>
<br>
On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase &lt;<a href=3D"mailto:lukashaa=
se@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto=
:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt; wrote:Hi a=
gain Rob,<br>
<br>
Yes, I confirm:<br>
<br>
1.) Finally I get the commands to execute at the same time (TX and RX indiv=
idually and both at the same time)<br>
2.) Yes, the phase is random after each retune, even when I retune back to =
the same frequency<br>
3.) (2) is only true if it includes *DSP* retuning. With naalog retuning (+=
integer-N retuning) I get phase coherence, as expected.<br>
<br>
I actually expected the PLL retuning much more challenging than the DSP ret=
uning but for some reason it seems to be the opposite...<br>
<br>
Thanks,<br>
Lukas<br>
=C2=A0<br>
=C2=A0=C2=A0<br><br>
</blockquote></div></div>

--0000000000000a06d705a0bef2b8--


--===============6436969284732435062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6436969284732435062==--

