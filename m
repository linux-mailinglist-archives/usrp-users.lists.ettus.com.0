Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A19AA10F303
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2019 23:57:46 +0100 (CET)
Received: from [::1] (port=42328 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ibudV-0006iO-Ht; Mon, 02 Dec 2019 17:57:45 -0500
Received: from mail-qv1-f53.google.com ([209.85.219.53]:45127)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1ibudS-0006bb-6I
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 17:57:42 -0500
Received: by mail-qv1-f53.google.com with SMTP id c2so629798qvp.12
 for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2019 14:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=DkyB4ZYDO7AQtCY+yGhp9We82BafK4w/2dMqpdn6RO0=;
 b=t3njh3iO2+sWjkOQ2EaiUiDuINBRzhigUwAf2QAFIZL4EHF0mro0lqsMU+eSKtFHgm
 vF1y8n+fkUTU4qSIRv6upPruMgT7wPzJLQm/Me9TIJ8vOqAiDe/RRV7vBZLWk3PWZgEz
 MWE82uD9tw6cDT3IJbUTXL+T8M57daH+wKemJ9OBd7AzUbY6jLPjVgs9dMVx8rkoLVjH
 AxqD/zRX68Ro1+Tv4TqkHFLOBayUDW498GYWjW4g83ir7xkemiOg0kEqjKXPDZ2DMiVC
 bgRnPE2RYB6p0ppK4R+FndUyqgOIpLfV2SO/lTdPa1Lb4KNz6PbzdWU/e3KYIKTf3ySm
 GVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=DkyB4ZYDO7AQtCY+yGhp9We82BafK4w/2dMqpdn6RO0=;
 b=HTb+aM72g4BtPuxfLowwbohKUtxw+sEG2wm1JYFvgkgO8oWt10fkz39N/96hGqnIGh
 J1tvuGxrIb7hFAi2kjoomGzAJQayoPZi96PHZl42DIfVit7a+F1hZySA834INzHeKJk1
 NQ+4wEDlVdwirwGW+H05vT9svuttkZth6BBT6XO0/+YlxIZwz8vbhWVs7Y7UazPjWJeu
 cVp4mN12/m5cio/TgZuCXEwq1Pqe2PDJNKg41S+RAsCOICJfAlsygW1HhzbVEbF1RsyL
 likfUMJyxUmZkogo6BUtIe5ymOesu1JofiXdnTpTBPjXSap3wnHCs/a6c7q2Mp8WvysX
 Yywg==
X-Gm-Message-State: APjAAAXSw8swOBWZY5SLyVcagA3E0QF2qqT7uf69vvRy5rCT8MND0uWm
 Ni+XCN9chdvWtUX92JrNwZXjXqQDqSh+yKdcjFLTvCzl
X-Google-Smtp-Source: APXvYqz8xnXflF8LSwB508T5wd1aY9VbGxfnZ8vYPTaOEbG8A5r9yAX/PTmerIO8YzC+zaPVKjndABAGHGZgdE7bUQ8=
X-Received: by 2002:a05:6214:22c:: with SMTP id
 j12mr1862014qvt.150.1575327421311; 
 Mon, 02 Dec 2019 14:57:01 -0800 (PST)
MIME-Version: 1.0
References: <BYAPR03MB36214F251A9766E8F9376E31D3790@BYAPR03MB3621.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB36214F251A9766E8F9376E31D3790@BYAPR03MB3621.namprd03.prod.outlook.com>
X-Google-Sender-Delegation: nate.temple@ettus.com
Date: Mon, 2 Dec 2019 14:57:39 -0800
X-Google-Sender-Auth: OWVLLqIjAIWrFIPQT3BYLzII-O0
Message-ID: <CACSOXP2Kx_0hQzZN4c0Jx1mv44Guc77QDFfJa=ZPb4TCsc1wrA@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Subject: Re: [USRP-users] x300 systematic error
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
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7734560756260316018=="
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

--===============7734560756260316018==
Content-Type: multipart/alternative; boundary="0000000000005a4a770598c07fae"

--0000000000005a4a770598c07fae
Content-Type: text/plain; charset="UTF-8"

Hi Lorenzo,

What version of UHD are you using?

Can you share your C++ app (either by emailing the mailing list or by
emailing it to support@ettus.com)?

Regards,
Nate Temple

On Wed, Nov 6, 2019 at 1:41 PM Minutolo, Lorenzo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
> My C++ application has a loop which after creating the streamers,
>
> send and receive some samples -> reset the streamers -> wait some time ->
> repeat.
>
> after exactly 83 iterations I get the error in the attached screenshot.
>
> If I restart the application everything works normally again
>
> What is causing this? is there a workaround?
>
>
> I'm using the USRP x300, core i9-990k CPU, intel x710 chip, running ubuntu
> 18.04 LTS with boost 1.68 and the latest UHD library (just coned).
>
> The error is the same using all other UHD versions
>
> Thanks,
> Lorenzo
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005a4a770598c07fae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Lorenzo,<br><br>What version of UHD are you using?<br><br>Ca=
n you share your C++ app (either by emailing the mailing list or by emailin=
g it to <a href=3D"mailto:support@ettus.com">support@ettus.com</a>)?<br><br=
>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2019 at 1:41 PM Minutolo, Lore=
nzo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
My C++ application has a loop which after creating the streamers,=C2=A0</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
send and receive some samples -&gt;<span style=3D"font-family:Calibri,Arial=
,Helvetica,sans-serif;background-color:rgb(255,255,255);display:inline"><sp=
an>=C2=A0</span>reset the streamers -&gt;</span>=C2=A0wait some time -&gt; =
repeat.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
after exactly 83 iterations I get the error in the attached screenshot.</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If I restart the application everything works normally again</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
What is causing this? is there a workaround?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">I&#39;m using the USRP x300, core i9-9=
90k CPU, intel x710 chip, running ubuntu 18.04 LTS with boost 1.68 and the =
latest UHD library
 (just coned).</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">The error is the same using all other =
UHD versions</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">Thanks,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">Lorenzo</span></div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005a4a770598c07fae--


--===============7734560756260316018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7734560756260316018==--

