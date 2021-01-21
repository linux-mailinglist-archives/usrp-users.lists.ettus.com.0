Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC752FEC64
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 14:58:11 +0100 (CET)
Received: from [::1] (port=47838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2aTQ-0005ch-BJ; Thu, 21 Jan 2021 08:58:08 -0500
Received: from mail-io1-f49.google.com ([209.85.166.49]:44878)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1l2aTN-0005O4-39
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 08:58:05 -0500
Received: by mail-io1-f49.google.com with SMTP id h11so4025627ioh.11
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 05:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xNaC+fRBNptMji580PVnXU5qlHdTsXGW39Rc/nVfef8=;
 b=LMbCffw7K/grD001T8UQp42BJiq3q4AWMCAjU69+RPm7diurS6MnH7yMMkidm+VBbh
 oms0SMbIm+VUfEvNjD1T1GcaH+PmiIwwEQ/xKzA66fw8pesTAx+MGN/ctQ1B8EzQQUyB
 LYGBlRoNR6KLyGOYN6w8rk2ONBjn4oi49pfC2x28ma0t2KlyTWZTKCkBf+dYQxPXKBzD
 w2hagwpER9iVaWIiu/rfYVw5zDanmbvcp6hhm2MZHKoZI4lMcfKi9INi2BT5QCdOyBjh
 ABs0/FjTz+40CnctFoP/4wXAv7Bnj8nRR/k9gMe6dJOuaMq/iZoQdAhZwTqyGYsjT8wP
 Fc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xNaC+fRBNptMji580PVnXU5qlHdTsXGW39Rc/nVfef8=;
 b=SLj1XR9dCs/o49BVPqGpAJhz9mCSG/Nj0uRP3u+ZKfAN/8ntxXG3KqpyQS2kU3L8Yo
 n2JIqEZpThRr8Zc9MXGE4WfQRqt3czrMcGh/Mxx6Q5B1BuQ+9RbUMlVu9DFIdQsplyJp
 QgMwckADXNFcQutmZvKHB74ywNd+IFMFjOrWCHVVVm9cddDHjru2qlqkdYi2D9W+2N8Y
 Awuh3pm8Mz68byhE3gUoUez1S8BWAKDm5Qgauc8mbMXA3PluVToDE3f5R5ocxRCw89pk
 tSEWlHS69jYdBGUcq7DHSS1Ld9452tiHbqfBRE7ZeExG586ebKRuRfAzl0OFmuWJfmsb
 bQjA==
X-Gm-Message-State: AOAM531ZJcomA8MAQoRoa5OYIrnLMemddirclUrF9oYgWPI3lrQUKrH8
 4ASl7lQVkxO+lbOAC6472Nb4fpkSwYhKTeT8J6qOlG5gr0XYHIKW
X-Google-Smtp-Source: ABdhPJwejqMxjBjnsigGKEvaSjHoJvUqDgE6yPPk888rvWt5qR8JZzHtLvw6ZkKGNrntVBWBv2cLJsy3ZRExf3MaTsk=
X-Received: by 2002:a05:6e02:1566:: with SMTP id
 k6mr12069211ilu.19.1611237444210; 
 Thu, 21 Jan 2021 05:57:24 -0800 (PST)
MIME-Version: 1.0
References: <8fa5f879-0438-325e-f003-53bde14464f0@discreteintegration.ca>
In-Reply-To: <8fa5f879-0438-325e-f003-53bde14464f0@discreteintegration.ca>
Date: Thu, 21 Jan 2021 07:56:48 -0600
Message-ID: <CACaXmv9P8DDtcz6xBxPLmuBTyA+oRnxLXg2Q9goMTR1CinuC_w@mail.gmail.com>
To: Dominic Schaub <dominic.schaub@discreteintegration.ca>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC/GNURadio with USRP-2974
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============6148032311482017380=="
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

--===============6148032311482017380==
Content-Type: multipart/alternative; boundary="00000000000082e7fa05b9697329"

--00000000000082e7fa05b9697329
Content-Type: text/plain; charset="UTF-8"

Hello Dominic:

The USRP 2974 is basically a USRP X310 with two UBX daughterboards and a
GPSDO module, with an internal Intel SoM.  You can install Linux, UHD, GNU
Radio, RFNoC directly onto the SoM, as you would with a laptop computer.
There is a KB page for the USRP 2974.  Please let me know if you have any
further questions.

https://kb.ettus.com/USRP-2974

--Neel Pandeya



On Wed, 20 Jan 2021 at 15:16, Dominic Schaub via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> We just received a USRP-2974 and would like to start working with
> RFNoC/GNURadio (rather than LabView).  I was hoping that somebody could
> direct me to a reference for configuring this SDR for RFNoC/GNURadio.
> There's a lot of material that covers non-embedded USRPs, but my
> understanding is that there are some additional configuration steps
> required for this model.
>
> Any help would be greatly appreciated.
>
> Dominic
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000082e7fa05b9697329
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello=C2=A0Dominic:</div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif">The USRP 2974 is basically a USRP X310=
 with two UBX daughterboards and a GPSDO module,=C2=A0with an internal Inte=
l SoM.=C2=A0 You can install Linux, UHD, GNU Radio, RFNoC directly onto the=
 SoM, as you would with a laptop computer.=C2=A0 There is a KB page for the=
 USRP 2974.=C2=A0 Please let me know if you have any further questions.</di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><a href=3D"https://kb.ettus.com/USRP-2974">https://kb.ettus.com/USRP-2974=
</a><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"verdana, sans-ser=
if">--Neel Pandeya</font><div><br></div></div></div></div><br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 20 Ja=
n 2021 at 15:16, Dominic Schaub via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
We just received a USRP-2974 and would like to start working with <br>
RFNoC/GNURadio (rather than LabView).=C2=A0 I was hoping that somebody coul=
d <br>
direct me to a reference for configuring this SDR for RFNoC/GNURadio. <br>
There&#39;s a lot of material that covers non-embedded USRPs, but my <br>
understanding is that there are some additional configuration steps <br>
required for this model.<br>
<br>
Any help would be greatly appreciated.<br>
<br>
Dominic<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000082e7fa05b9697329--


--===============6148032311482017380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6148032311482017380==--

