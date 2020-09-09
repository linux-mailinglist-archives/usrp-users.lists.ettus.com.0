Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E82AD2625F6
	for <lists+usrp-users@lfdr.de>; Wed,  9 Sep 2020 05:48:07 +0200 (CEST)
Received: from [::1] (port=56426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFr5Y-0001kO-ND; Tue, 08 Sep 2020 23:48:04 -0400
Received: from postman.dtnt.info ([62.219.91.51]:42156)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kFr5U-0001do-Cd
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 23:48:00 -0400
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id 1E513476B2
 for <usrp-users@lists.ettus.com>; Wed,  9 Sep 2020 06:47:06 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id DB3349FB36
 for <usrp-users@lists.ettus.com>; Wed,  9 Sep 2020 06:47:05 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yd91ADoRvuSD for <usrp-users@lists.ettus.com>;
 Wed,  9 Sep 2020 06:47:04 +0300 (IDT)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54]) by o.dtnt.email (Postfix) with ESMTPSA id 4EED19FB0E
 for <usrp-users@lists.ettus.com>; Wed,  9 Sep 2020 06:47:04 +0300 (IDT)
Received: by mail-ot1-f54.google.com with SMTP id c10so1097340otm.13
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 20:47:04 -0700 (PDT)
X-Gm-Message-State: AOAM532sPpXBx1zY1Bbhz97m9koXaiHML/2y5vzHmVE9AGO9lu6MpkNQ
 qrSCG6u7if6dH7EIdIu8Na73pdjHPYC2JHWydDU=
X-Google-Smtp-Source: ABdhPJwo1grhdFru5kSfkpau72yEtd/IqtuS+LCxUs71AfFQXPa8G8c8WBKdgcJUZYkMUUlIgIFVqbaIh0Jpd1YOpFo=
X-Received: by 2002:a9d:c44:: with SMTP id 62mr1657283otr.185.1599623222280;
 Tue, 08 Sep 2020 20:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.44.1599580802.32464.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.44.1599580802.32464.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Wed, 9 Sep 2020 06:46:51 +0300
X-Gmail-Original-Message-ID: <CACDReSzm2jTnnq7YLENKr==RCZy2_epGo0Tce6yrxDtFy49sNQ@mail.gmail.com>
Message-ID: <CACDReSzm2jTnnq7YLENKr==RCZy2_epGo0Tce6yrxDtFy49sNQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 1E513476B2.A34D7
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: Re: [USRP-users] Rx sample rate for USRP E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============4830541644812061427=="
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

--===============4830541644812061427==
Content-Type: multipart/alternative; boundary="000000000000f0454d05aed94dcd"

--000000000000f0454d05aed94dcd
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus and Martin.
Maybe I will try to explain what I am trying to do and you can correct what
I am doing wrong.
I don't want to stream the samples. I understand the limitations of the ARM
processor.
What I would like to do is to record (capture) samples to DDR memory in
real time. Only one block of samples.
Then, write that block, offline, to the SD card as slow as necessary. So
definitely no streaming to SD card.
This should be possible and not related at all to the speed of the ARM
processor. It should be handled by a DMA of the FPGA directly to DDR memory
and the FPGA should be fast enough to handle the task.
I thought that by specifying --nsamps instead of --duration it would
achieve exactly what I wanted. I thought that specifying --duration is a
streaming operation while specifying --nsamps makes it one-shot.

Regards,
Ofer Saferman


---------- Forwarded message ----------
> From: Martin Braun <martin.braun@ettus.com>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Tue, 8 Sep 2020 17:16:45 +0200
> Subject: Re: [USRP-users] Rx sample rate for USRP E310
> On 9/5/20 2:59 PM, Ofer Saferman via USRP-users wrote:
> > Hello,
> >
> > I am just starting out with the USRP E310 so bare with me.
> > I am trying to capture samples to file using: ./rx_samples_to_file
> > --freq 2.4e9 --rate 40e6 --bw 40e6 --gain 30 --nsamps 1000000 --file
> > samp4.dat
> > I get the following two warnings during processing:
> >
> ------------------------------------------------------------------------------------------------------
> > [WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit
> > rates may encounter errors.
> >
> ------------------------------------------------------------------------------------------------------
> >
> > Setting RX Rate: 40.000000 Msps...
> > [WARNING] [MULTI_USRP] The hardware does not support the requested RX
> > sample rate:
> > Target sample rate: 40.000000 MSps
> > Actual sample rate: 16.000000 MSps
> >
> ------------------------------------------------------------------------------------------------------
> >
> > Are the warnings related?
> > I tried various combinations of number of samples bandwidths and sample
> > rates and can't get more than 16 Msps.
> > Why can't I get a sample rate of more than 16 MSps?
> > Any help will be appreciated.
>
> On top of what Marcus said, you need to specify master_clock_rate to set
> other rates. 16 MHz is the default master clock rate. If you were able
> to stream 40 MHz, you would need to do
>
>     ./rx_samples_to_file --args master_clock_rate=40e6 [...other args..]
>
> This is also relevant for other sampling rates. For example, 3 Msps is
> something the device can handle (maybe even write to SD card), but you
> would need a different master clock rate that is an integer multiple,
> ideally an even one. In this case, I'd recommend master_clock_rate=12e6
> which is 4 times 3. The USRP will engage 2 halfband filters to decimate
> the rate. A master clock rate of 3 Msps is theoretically possible, but
> not recommended since it will slow down other parts of the chip, too.
>
> The FIFO warning is unrelated. You can ignore that. It should probably
> not be there in the first place.
>
> --M
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000f0454d05aed94dcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Marcus and Martin.</div><div>Maybe I will t=
ry to explain what I am trying to do and you can correct what I am doing wr=
ong.</div><div>I don&#39;t want to stream the samples. I understand the lim=
itations of the ARM processor.</div><div>What I would like to do is to reco=
rd (capture) samples to DDR memory in real time. Only one block of samples.=
</div><div>Then, write that block, offline, to the SD card as slow as neces=
sary. So definitely no streaming to SD card.<br></div><div>This should be p=
ossible and not related at all to the speed of the ARM processor. It should=
 be handled by a DMA of the FPGA directly to DDR memory and the FPGA should=
 be fast enough to handle the task.<br></div><div>I thought that by specify=
ing --nsamps instead of --duration it would achieve exactly what I wanted. =
I thought that specifying --duration is a streaming operation while specify=
ing --nsamps makes it one-shot.</div><div><br></div><div>Regards,</div><div=
>Ofer Saferman<br></div><br><div class=3D"gmail_quote"><br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">---------- Forwarded message ----------<b=
r>From:=C2=A0Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" tar=
get=3D"_blank">martin.braun@ettus.com</a>&gt;<br>To:=C2=A0<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a><br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Tue, 8 Sep 2020 17:16:45 +0200<=
br>Subject:=C2=A0Re: [USRP-users] Rx sample rate for USRP E310<br>On 9/5/20=
 2:59 PM, Ofer Saferman via USRP-users wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I am just starting out with the USRP E310 so bare with me.<br>
&gt; I am trying to capture samples to file using: ./rx_samples_to_file<br>
&gt; --freq 2.4e9 --rate 40e6 --bw 40e6 --gain 30 --nsamps 1000000 --file<b=
r>
&gt; samp4.dat<br>
&gt; I get the following two warnings during processing:<br>
&gt; ----------------------------------------------------------------------=
--------------------------------<br>
&gt; [WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit<br>
&gt; rates may encounter errors.<br>
&gt; ----------------------------------------------------------------------=
--------------------------------<br>
&gt; <br>
&gt; Setting RX Rate: 40.000000 Msps...<br>
&gt; [WARNING] [MULTI_USRP] The hardware does not support the requested RX<=
br>
&gt; sample rate:<br>
&gt; Target sample rate: 40.000000 MSps<br>
&gt; Actual sample rate: 16.000000 MSps<br>
&gt; ----------------------------------------------------------------------=
--------------------------------<br>
&gt; <br>
&gt; Are the warnings related?<br>
&gt; I tried various combinations of number of samples bandwidths and sampl=
e<br>
&gt; rates and can&#39;t get more than 16 Msps.<br>
&gt; Why can&#39;t I get a sample rate of more than 16 MSps?<br>
&gt; Any help will be appreciated.<br>
<br>
On top of what Marcus said, you need to specify master_clock_rate to set<br>
other rates. 16 MHz is the default master clock rate. If you were able<br>
to stream 40 MHz, you would need to do<br>
<br>
=C2=A0 =C2=A0 ./rx_samples_to_file --args master_clock_rate=3D40e6 [...othe=
r args..]<br>
<br>
This is also relevant for other sampling rates. For example, 3 Msps is<br>
something the device can handle (maybe even write to SD card), but you<br>
would need a different master clock rate that is an integer multiple,<br>
ideally an even one. In this case, I&#39;d recommend master_clock_rate=3D12=
e6<br>
which is 4 times 3. The USRP will engage 2 halfband filters to decimate<br>
the rate. A master clock rate of 3 Msps is theoretically possible, but<br>
not recommended since it will slow down other parts of the chip, too.<br>
<br>
The FIFO warning is unrelated. You can ignore that. It should probably<br>
not be there in the first place.<br>
<br>
--M<br>
<br>


<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000f0454d05aed94dcd--


--===============4830541644812061427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4830541644812061427==--

