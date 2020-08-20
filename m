Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A393224BE28
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 15:21:45 +0200 (CEST)
Received: from [::1] (port=40792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8kVj-0004Tl-9w; Thu, 20 Aug 2020 09:21:43 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:33869)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k8kVf-0004O5-Cb
 for usrp-users@lists.ettus.com; Thu, 20 Aug 2020 09:21:39 -0400
Received: by mail-ot1-f42.google.com with SMTP id k12so1435068otr.1
 for <usrp-users@lists.ettus.com>; Thu, 20 Aug 2020 06:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DcJCEkXZfUweGc8g6K6VvhWAIYvsZYliXZ8ovUpzjj8=;
 b=ihdHzzY8zgEyPTe8wjLkBuyVh63f1LZYNNiy1d54oXqZzbxGP/UDhxJGK0QschhWXU
 7vroq1I+fbSslARfZzkAw3GaSe2M5RY1jKiRpikNOBp8ho9YMJOJjTX5L7lsaqcVJSuy
 OIl7R5+jK9i0paZY/rfMJBi6Ea8YOC9c1pjfdJDkYmbtvvv3PHm6BnH2+4ERHHbJKEjg
 FTSM7VCeSCqy6pTZUgTd+yYcOH0X6D+ZF6g1myquvzSVopHI1tnpJsqNhYI2pDE+J/jK
 2CqFmKAWw09u8eRSbMpulc7eH5bd3DYBBbcRkOJ+0Fbq5MkQDqWp2J/X4+8xabsx8fRJ
 xnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DcJCEkXZfUweGc8g6K6VvhWAIYvsZYliXZ8ovUpzjj8=;
 b=C7U2OYrYfwqXuDHsp139nhLy3ChCjF7wUZZOuh4W/XbxmkmQb0OLCpBeVPElH8Es4c
 9D8/BKcBfGMTxgNg+vvxd1khVt7rMAwqvngLhqEwRmOOcenksVtsmcLrDB/UwfMCZ3us
 03d6eOI4e6ro5CwaSnXmardQDvoo085YmEFxxZwFvzthJvd1j6ZSfRNGj/dZyc2Mj3HG
 e+2JUIyvw5cPFw6OfZsnZJ7UPZoFGpFRf6ImN3esAriD+EbiL2f5uNs5U8wjO+iApQKO
 zf5QVhJOCeQuwgq4Cm79CQ+qPUZECMyPQ1wQOfodSkPm9schRAxFaJMReHxwaoWVr8Ie
 e+sQ==
X-Gm-Message-State: AOAM530fBt2earP8ozr/SpTFXvUEDlmNkb4KJZcs+0s5vWR6VwbC24nR
 x6I9aMycEmVqEMStCDwk8k/G6r7COkIYleU517T1ZBRIngQ=
X-Google-Smtp-Source: ABdhPJxJEzDljkfP1vEtFiGWu7dOhQV85vYgCWc1D6tP08M8AkQuW37+UaC1PcZz27qQ0m1LKfb74INyp64RN3Qbkks=
X-Received: by 2002:a9d:604c:: with SMTP id v12mr2048646otj.301.1597929658540; 
 Thu, 20 Aug 2020 06:20:58 -0700 (PDT)
MIME-Version: 1.0
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
In-Reply-To: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
Date: Thu, 20 Aug 2020 09:20:47 -0400
Message-ID: <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
To: Andreas.Bertheussen@kongsberg.com
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6494366163758890230=="
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

--===============6494366163758890230==
Content-Type: multipart/alternative; boundary="000000000000aca50a05ad4efd8e"

--000000000000aca50a05ad4efd8e
Content-Type: text/plain; charset="UTF-8"

Hi Andreas,
I wouldn't be at all surprised if this is a bug.  It looks like the issue
has to do with the DUC rates being mismatched because you aren't setting
the tx rate for one of the channels in the 2 USRP case (and you can't set
it because it is not really a channel after you use subdev A:0). As an
alternative, could you use subdev spec A:0 B:0 for the 2 USRP cases but
then just include channels 0 and 2 in your tx streamer in order to stream
on the desired antenna ports?
Rob

On Thu, Aug 20, 2020 at 7:23 AM Andreas B via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I have a setup with two USRP X310. Each X310 has two UBX-40 daughterboards
> for a total of 4 RX channels and 4 TX channels. Attached is the
> uhd_usrp_probe status for the USRP X310s in my setup.
> Both X310s are connected to an OctoClock-G, where they get fed 10MHz and
> 1PPS.
> Host computer runs Fedora 32, UHD 3.15.0.0, and connects to the X310s
> through a 1Gbps Ethernet switch.
>
> I'm trying to transmit phase coherent signals using multi-usrp. For now
> I'm only trying to transmit two channels, but ultimately I want to use more
> channels, and a third X310.
> For test purpose I'm tuning to a low frequency of 350MHz, which I can
> observe on oscilloscope, and a low sample rate of 1 Msps. The signals
> generated are DC at baseband, and show up as 350Mhz sinusoids when things
> work as expected.
>
> When I run my code with only one X310, and subdev spec ("A:0 B:0"), things
> work fine (full output in attached success.txt file).
>
> The issue occurs when I try to use two X310s, each with subdev spec "A:0".
> I get the following error message (full output in attached failure.txt
> file):
> "Error: RuntimeError: Multiple sampling rates downstream of TX Terminator
> 0: RuntimeError: Node 1/DUC_0 specifies 1e+06, node 1/DUC_1 specifies
> 390625."
> I'm not trying to use different sampling rates. This error message occurs
> most of the time, but occasionally it works OK.
>
> Full source code is in attached siggen.cc. The code I comment/uncomment to
> show the two cases are lines 26,27,35,36 and 39.
> I synchronize and do timed command for tune requests in order to get
> coherent operation.
>
> --
> Regards,
> Andreas.
>
>
>
> ________________________________
>
> CONFIDENTIALITY
> This e-mail and any attachment contain KONGSBERG information which may be
> proprietary, confidential or subject to export regulations, and is only
> meant for the intended recipient(s). Any disclosure, copying, distribution
> or use is prohibited, if not otherwise explicitly agreed with KONGSBERG. If
> received in error, please delete it immediately from your system and notify
> the sender properly.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000aca50a05ad4efd8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andreas,<div>I wouldn&#39;t be at all surprised if this=
 is a bug.=C2=A0 It looks like the issue has to do with the DUC rates being=
 mismatched because you aren&#39;t setting the tx rate for=C2=A0one of the =
channels in the 2 USRP case (and you can&#39;t set it because it=C2=A0is no=
t really a channel after you use=C2=A0subdev A:0). As an alternative, could=
 you use subdev spec A:0 B:0 for the 2 USRP cases but then just include cha=
nnels 0 and 2 in your tx streamer in order to stream on the desired antenna=
 ports?</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Aug 20, 2020 at 7:23 AM Andreas B via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi,<br>
<br>
I have a setup with two USRP X310. Each X310 has two UBX-40 daughterboards =
for a total of 4 RX channels and 4 TX channels. Attached is the uhd_usrp_pr=
obe status for the USRP X310s in my setup.<br>
Both X310s are connected to an OctoClock-G, where they get fed 10MHz and 1P=
PS.<br>
Host computer runs Fedora 32, UHD 3.15.0.0, and connects to the X310s throu=
gh a 1Gbps Ethernet switch.<br>
<br>
I&#39;m trying to transmit phase coherent signals using multi-usrp. For now=
 I&#39;m only trying to transmit two channels, but ultimately I want to use=
 more channels, and a third X310.<br>
For test purpose I&#39;m tuning to a low frequency of 350MHz, which I can o=
bserve on oscilloscope, and a low sample rate of 1 Msps. The signals genera=
ted are DC at baseband, and show up as 350Mhz sinusoids when things work as=
 expected.<br>
<br>
When I run my code with only one X310, and subdev spec (&quot;A:0 B:0&quot;=
), things work fine (full output in attached success.txt file).<br>
<br>
The issue occurs when I try to use two X310s, each with subdev spec &quot;A=
:0&quot;. I get the following error message (full output in attached failur=
e.txt file):<br>
&quot;Error: RuntimeError: Multiple sampling rates downstream of TX Termina=
tor 0: RuntimeError: Node 1/DUC_0 specifies 1e+06, node 1/DUC_1 specifies 3=
90625.&quot;<br>
I&#39;m not trying to use different sampling rates. This error message occu=
rs most of the time, but occasionally it works OK.<br>
<br>
Full source code is in attached siggen.cc. The code I comment/uncomment to =
show the two cases are lines 26,27,35,36 and 39.<br>
I synchronize and do timed command for tune requests in order to get cohere=
nt operation.<br>
<br>
--<br>
Regards,<br>
Andreas.<br>
<br>
<br>
<br>
________________________________<br>
<br>
CONFIDENTIALITY<br>
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise explicitly agreed with KONGSBERG. If rec=
eived in error, please delete it immediately from your system and notify th=
e sender properly.<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000aca50a05ad4efd8e--


--===============6494366163758890230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6494366163758890230==--

