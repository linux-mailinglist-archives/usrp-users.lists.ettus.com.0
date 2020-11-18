Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CF42B7CB1
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 12:32:05 +0100 (CET)
Received: from [::1] (port=54484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfLgx-0004sR-AU; Wed, 18 Nov 2020 06:32:03 -0500
Received: from mail-io1-f41.google.com ([209.85.166.41]:43434)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1kfLgt-0004jo-6S
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 06:31:59 -0500
Received: by mail-io1-f41.google.com with SMTP id m9so1590767iox.10
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 03:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yqXNOQPw2iohvk8BQtUNyrz8JC/L54uWybq6TGh2/N0=;
 b=WuItgghRUy9CrzYQl8nEirTSc4JsCwL1fmJz5uCPM+qX0y7DcSPyV5s1ltV5GNlnDA
 GyuK3DQYzoYQmtbWnTf4pQMDiOC3ykFFQwnu4eA5VyyDh68eif0JLLygUqm4mlDdzrj6
 MOHxCCitgCM82hR67tSR36+Bomb0iFsIR1PO7GRM3UDUpQecu/x2KquanZVgRBCIjgjX
 X0soE0PR17RAdTjro1QxI8sHocDlXgSGZupo/wRWO1Fk+rugWZmacDwDUDKx9/otEjko
 PUohOfpci8jpvYi8PGAcBAopQK6jhoIAh9APmgjAQeL+wir6/REdaXwT62UCRrLr9FBP
 I+MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yqXNOQPw2iohvk8BQtUNyrz8JC/L54uWybq6TGh2/N0=;
 b=IPKWUkD96SJp28Q6ws9syY1gzt6s26hawXkfFwnLuq/T19rti17jjk9WZ6xCaEs1Ln
 JWTONfSmfGyCloIjZOESmYqKGr4zD8SM2myUL3jsqlS0+7MH3/LC0DVIhtmx4W60tr54
 JYMxTDaHrnCtxu0FkXoHQv3z5dTh9mmL7OavUvyn9pI0J65yfCWahUj/1oVG+9CQIgtQ
 RkfvCwHwcrOkzBfTfZatT584tPSfH06oZ/1O8NmNCd8cYlgu1dlQ06Lau9TB1nyCxI8b
 ObmZtyyaQIccX+P9Cg8CO+0EBxQGCwrokVWmg5HVMypnyuYcNJ6OiZxf0leQXhBu/KCX
 IFkA==
X-Gm-Message-State: AOAM531cTwP5A8Fwlm1g7T6QWcMM9/aywdK0kc4EEqYpzK1lVNH0duTx
 /Wkdm1nKkTEWzFLu+BrzqFwggg793QPHNLqMINs=
X-Google-Smtp-Source: ABdhPJzNSBaYyosnQYnCasUZvEdOvHYT86hFcBHHrDIvAtOvd8IZYrO+fxggGoTGmFH9sqQtNUfyTLQyFS4w8aoF2w4=
X-Received: by 2002:a6b:4e0b:: with SMTP id c11mr15153408iob.125.1605699078380; 
 Wed, 18 Nov 2020 03:31:18 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxt8qaJ-DbgKbDQbXYMt8=0PKC42JReqb=LrUxR0ZCEJqg@mail.gmail.com>
 <1B15B53D-E33A-4D5A-8CFB-B20AA0853B5D@tiscali.it>
In-Reply-To: <1B15B53D-E33A-4D5A-8CFB-B20AA0853B5D@tiscali.it>
Date: Wed, 18 Nov 2020 11:31:07 +0200
Message-ID: <CAPRRyxuHE=c3Kx2ywT=4kdk1LExzk-_Tbo_7Dxag1CpEbM6xdA@mail.gmail.com>
To: Ivan Iudice <krono86@tiscali.it>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: Re: [USRP-users] Direction finding based on USRP E310 board
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============7011071542338441240=="
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

--===============7011071542338441240==
Content-Type: multipart/alternative; boundary="0000000000002ee2bc05b45ff37c"

--0000000000002ee2bc05b45ff37c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Another question of interest is which channels are coherent? Rx1 and RX2 or
RX1 and RX / TX?

=D0=B2=D1=82, 17 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 01:56, Ivan =
Iudice <krono86@tiscali.it>:

> Right!
> Be careful, DOA estimation using only 2 antennas works but it=E2=80=99s n=
ot so
> accurate.
> Enjoy!
>
> Ivan
>
> > Il giorno 17 nov 2020, alle ore 00:35, Ivan Zahartchuk <
> adray0001@gmail.com> ha scritto:
> >
> > =EF=BB=BF
> >
> >
> >
> > That is, in theory, I can simply start two streams from two channels an=
d
> further process them using certain direction finding algorithms?
> >
> >
>
>

--0000000000002ee2bc05b45ff37c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline"><span style=
=3D"color:rgb(32,33,36);font-family:arial,sans-serif;font-size:28px;white-s=
pace:pre-wrap;background-color:rgb(248,249,250)"></span>

Another question of interest is which channels are coherent? Rx1 and RX2 or=
 RX1 and RX / TX?

=C2=A0=C2=A0<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">=D0=B2=D1=82, 17 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=
=B2 01:56, Ivan Iudice &lt;<a href=3D"mailto:krono86@tiscali.it">krono86@ti=
scali.it</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Right!<br>
Be careful, DOA estimation using only 2 antennas works but it=E2=80=99s not=
 so accurate.<br>
Enjoy!<br>
<br>
Ivan<br>
<br>
&gt; Il giorno 17 nov 2020, alle ore 00:35, Ivan Zahartchuk &lt;<a href=3D"=
mailto:adray0001@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt; h=
a scritto:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; That is, in theory, I can simply start two streams from two channels a=
nd further process them using certain direction finding algorithms?<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--0000000000002ee2bc05b45ff37c--


--===============7011071542338441240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7011071542338441240==--

