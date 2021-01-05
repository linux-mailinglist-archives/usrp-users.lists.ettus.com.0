Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B7A2EB2BE
	for <lists+usrp-users@lfdr.de>; Tue,  5 Jan 2021 19:46:35 +0100 (CET)
Received: from [::1] (port=52524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwrLk-0002rU-44; Tue, 05 Jan 2021 13:46:32 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:46722)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kwrLg-0002m6-IL
 for usrp-users@lists.ettus.com; Tue, 05 Jan 2021 13:46:28 -0500
Received: by mail-ot1-f42.google.com with SMTP id w3so605302otp.13
 for <usrp-users@lists.ettus.com>; Tue, 05 Jan 2021 10:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8zhQA/o08jixUWSZqlYLw3odxuMesMJSSEpEb2VtK1g=;
 b=jyn4VnW3JkrraN+xqTrdpm4xK8Vc3x2vGzCO0dxnTOST8WwqkBOzRVGIxt4L5GXdbS
 WhZYlt486/qzvxvkVrMjA7doiAdvoQ/SWeaw/j7DQFOWiSlN4Sr9xJaDnBOBeqMPGj86
 GSyoBShsvHt2EUESd3oAln471l2CgwJW7jJa0yE6jkaAGI9fTw65ICL/c/QfQIynFvfO
 WSR57HR8pneUiD30eDUrVpdNc8WHnm2DYhJqeNhrd4O20Jed69EruVXsIXyTCoDd9ioJ
 4H2GQlu5GYqAAn5fD5isSM0va30goWdvhn9nVi+KjiLsrkPstygRjzHlanP4GLrOJ2QY
 guZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8zhQA/o08jixUWSZqlYLw3odxuMesMJSSEpEb2VtK1g=;
 b=VQBsWyRjWdxOXa0We4mZLsctFK21hg2fLgyyhpRl4LRPI4MJRmJigOsy1Gvxjy0rA6
 rkRHdbgc6jH84MmLFa6vOEBt9jlfWMCOls3NnIBKWHZLbc5MON5vbvZcMZHpsndo1WOe
 DAf4g3Y7Gs7PhaqK/n1fjiwuuQjc3xTddEaFlPRGW63GmusAUMrydkQSoHxKPtNbbqzd
 j6uMwQoBemkkLakjzrGkCjIw/rh7l94iZELV5VRUWrsRPcU1bu4EjM1wL0NRK+YP+2j8
 +Ub2Qebpiamm2aiFm7iDdkSCszzwqBwlGSfzEvKDTyuL0OS2AtBcI1WxoxsEYqmAAMhJ
 wYHw==
X-Gm-Message-State: AOAM531uvNQ49lwG+W9TxnbXdzE/jYmE1agWdugS+u/pmKn8pwNkR76p
 zleK9CRQYPoyljbDcsAWothljIx7lBYWa7UZN4Ekog==
X-Google-Smtp-Source: ABdhPJzsW26YgoUglg/usrXmJWlRgEELOGNDhcTBX8ejmmFJL5to00IjRv63S7tP0ronaR6H7vve75cGpkbWm03V3gk=
X-Received: by 2002:a9d:6b10:: with SMTP id g16mr591265otp.301.1609872347524; 
 Tue, 05 Jan 2021 10:45:47 -0800 (PST)
MIME-Version: 1.0
References: <BN7PR04MB438735C2290ABC23244C5E3E8FD70@BN7PR04MB4387.namprd04.prod.outlook.com>
 <CAL7q81sktbdKdLBfE+3_NOCRbmwND1UUUGReKvvJK5SdTdyvvA@mail.gmail.com>
In-Reply-To: <CAL7q81sktbdKdLBfE+3_NOCRbmwND1UUUGReKvvJK5SdTdyvvA@mail.gmail.com>
Date: Tue, 5 Jan 2021 13:45:36 -0500
Message-ID: <CAB__hTRAv-+TUXNV6DnO1ZUuFNM9OQXQecnudJ0E7nciMQMbFw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: Dylan Baros <dylan.baros@ni.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfNoc Replay Benchmark with N321
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
Content-Type: multipart/mixed; boundary="===============1292228946815173970=="
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

--===============1292228946815173970==
Content-Type: multipart/alternative; boundary="00000000000068b00d05b82b9df0"

--00000000000068b00d05b82b9df0
Content-Type: text/plain; charset="UTF-8"

Hi Dylan,
Just to confirm that you are using UHD 4.0?  If so, then it should work.
But, if you are using UHD3.x, I think that the replay block cannot provide
250 MS/s on both channels.
Rob

On Tue, Jan 5, 2021 at 1:59 AM Jonathon Pendlum via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Dylan,
>
> Are you saying you want a flowgraph like this?
> Replay Block -> Radio TX
> Radio RX -> Host (2x 10GigE)
>
> If so, yes that is possible. See
> http://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Dual_10_Gb_Interface
> for how to benchmark rx. Also, take note of the "second_addr" device arg in
> that example as it will be needed when you write your UHD app for the above
> flowgraph.
>
> Jonathon
>
> On Wed, Dec 30, 2020 at 10:52 AM Dylan Baros via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Good morning,
>>
>> I am interested in using a rfnoc replay block to benchmark rx over both
>> 10 gb ports, is that possible? I would like to dedicate both ports to
>> receiving and the rfnoc replay block to transmit. I am using a N321.
>>
>> Thanks,
>> Dylan
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000068b00d05b82b9df0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Dylan,<div>Just to confirm that you ar=
e using UHD 4.0?=C2=A0 If so, then it should work.=C2=A0 But, if you are us=
ing UHD3.x, I think that the replay block cannot provide 250 MS/s on both c=
hannels.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jan 5, 2021 at 1:59 AM Jonathon Pendl=
um via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hi Dylan,<div><br></div><div>Are you sa=
ying you want a flowgraph like this?</div><div>Replay Block -&gt; Radio TX<=
/div><div>Radio RX -&gt; Host (2x 10GigE)</div><div><br></div><div>If so, y=
es that is possible. See=C2=A0<a href=3D"http://kb.ettus.com/USRP_N300/N310=
/N320/N321_Getting_Started_Guide#Dual_10_Gb_Interface" target=3D"_blank">ht=
tp://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Dual_10_Gb=
_Interface</a> for how to benchmark rx. Also, take note of the &quot;second=
_addr&quot; device arg in that example as it will be needed when you write =
your UHD app for the above flowgraph.</div><div><br></div><div>Jonathon</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Dec 30, 2020 at 10:52 AM Dylan Baros via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Good morning,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am interested in using a rfnoc replay block to benchmark rx over both 10 =
gb ports, is that possible? I would like to dedicate both ports to receivin=
g and the rfnoc replay block to transmit. I am using a N321.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Dylan=C2=A0</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000068b00d05b82b9df0--


--===============1292228946815173970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1292228946815173970==--

