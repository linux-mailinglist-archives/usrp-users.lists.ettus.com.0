Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1020E14F3CC
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2020 22:32:51 +0100 (CET)
Received: from [::1] (port=51538 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixduD-00089x-AM; Fri, 31 Jan 2020 16:32:49 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:43667)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1ixdu9-00082N-At
 for usrp-users@lists.ettus.com; Fri, 31 Jan 2020 16:32:45 -0500
Received: by mail-oi1-f173.google.com with SMTP id p125so8704265oif.10
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 13:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dv1IexgwCReDcF1n6s5fvyUB7oraGZ/jL7cggfuGrLk=;
 b=PORuLxmhy4tpinY6MxLj76qqZan4SBuZUXmn/Wx/yConoxOSRF/21mHctyKJd/C6X7
 0T1qV4B6TkIK0icLLW7+twL2Fy6BU7nHB+Xde37zQn5RNqCw40JN3QIQyNJPrgK5g3cv
 ajPXjZDf1kfK3qnnWr8153V5543JIyNO8bYghlN6Kvi3eC4xGs1wXoeO4Be1UfApZjuW
 ejDr30yYwo0UZe4pzNHZoMDugxaGDJ79dpRNgpeAMguikvcic5o/DiVVTcSfxMIAoywK
 xVtPyf4B6kBu8JtrieQuvZ+LRl1Iiy/A4h20vFiSwpI2QQgoP2TukylTeprExGUDODA8
 ps7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dv1IexgwCReDcF1n6s5fvyUB7oraGZ/jL7cggfuGrLk=;
 b=g/npBPNdf3LUEO83UJ52ygZZ7Nlfh3U2P7RVEqlW9sy0xmyOXpleSdU0OWXaKVzumg
 QHJmvx7hobMf1K7FhmgwQxDhxHyYJKC8w+dpocB1YMkMiKsGXuOwhMtHn9adZcYfxqGd
 2OEJCbwspPUBEVDI5HunthlVA3RG3h0sjkgi25DWzLauxVzN2MaqVYwMuofacJA4YX2k
 txuL++kFEghKUwuWMY4iIBoOUp+jbGud/aId5EzOahz0Ug7smdlSmmw9IlOh1+Uktssc
 RV0AYuylOtvbPxcW8v/ValUi0GbJg9uzTQy8SIJABD4VsgRtxjwqcf/v6YPvvf0efvtv
 aOTw==
X-Gm-Message-State: APjAAAW+Wc0I3skEw//IZud0+G4bRscmFPDk0yzoAOogDK5mqHTxgKYW
 UGwdYTJ1RZuOeOSMOnUejS7KBX75YS6DeYrqIfYYtyWC
X-Google-Smtp-Source: APXvYqw3lgEiShcClTDbwGnnWXQSCsLdDZSRKEv/cdLB3xoOe32hkkIBUPIl1tPjY/PWr8fE3R2Zu485ntxrTL5I8Qg=
X-Received: by 2002:a54:450d:: with SMTP id l13mr7883414oil.117.1580506324671; 
 Fri, 31 Jan 2020 13:32:04 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR09MB44944794B7E0120493575601B9050@DM6PR09MB4494.namprd09.prod.outlook.com>
In-Reply-To: <DM6PR09MB44944794B7E0120493575601B9050@DM6PR09MB4494.namprd09.prod.outlook.com>
Date: Fri, 31 Jan 2020 16:31:54 -0500
Message-ID: <CAGNhwTPj=GrEgQcGZkwKdVVD9EsruShDJBh+YNK8_Rr8ct-mow@mail.gmail.com>
To: Kyle A Logue <kyle.a.logue@aero.org>
Subject: Re: [USRP-users] E320 POE+ Adapter Suggestions
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0661461191597412773=="
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

--===============0661461191597412773==
Content-Type: multipart/alternative; boundary="0000000000000c4528059d764ec8"

--0000000000000c4528059d764ec8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kyle - Pretty much any PoE+ splitter should do the trick so long as it
can match the E320's input voltage & power plug size. Some of the Ettus
developers have tested a few stock splitters with good success. We don't
have a specific recommended device. Cheers! - MLD

On Tue, Jan 28, 2020 at 7:13 PM Kyle A Logue via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I'm interested in using a E320 via POE+ to deliver 12v power. Does anyone
> have suggestions for injectors/adapters to use in combination with the
> E320? POE+ is supposed to be able to deliver up to 30W, which is
> conveniently how the E320 is 12V rated. I found one an Amazon that will d=
o
> 24W (SMAKN=C2=AE Active Gigabit PoE Splitter Adapter, IEEE 802.3at compli=
ant, Up
> To 100 meters, 5V / 12V /18v Output), is there a better alternative?
>
> I know I will have to make a cable. Thanks.
>
> *Kyle Logue*
>
> *Engineering Manager =E2=9A=9D Comm Software Implementation Dept *
> *The Aerospace Corporation*
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--0000000000000c4528059d764ec8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Kyle - Pretty much any PoE+ splitter should do the=
 trick so long as it can match the E320&#39;s input voltage &amp; power plu=
g size. Some of the Ettus developers have tested a few stock splitters with=
 good success. We don&#39;t have a specific recommended device. Cheers! - M=
LD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Jan 28, 2020 at 7:13 PM Kyle A Logue via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I&#39;m interested in using a E320 via POE+ to deliver 12v power. Does anyo=
ne have suggestions for injectors/adapters to use in combination with the E=
320? POE+ is supposed to be able to deliver up to 30W, which is convenientl=
y how the E320 is 12V rated. I found
 one an Amazon that will do 24W (SMAKN=C2=AE Active Gigabit PoE Splitter Ad=
apter, IEEE 802.3at compliant, Up To 100 meters, 5V / 12V /18v Output), is =
there a better alternative?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I know I will have to make a cable. Thanks.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-2133530090505569977Signature">
<div></div>
<div id=3D"gmail-m_-2133530090505569977divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif">
<span id=3D"gmail-m_-2133530090505569977ms-rterangepaste-start"></span><spa=
n style=3D"font-family:Consolas,monospace;font-size:8pt"><span style=3D"fon=
t-family:Consolas,monospace;font-size:8pt"><b>Kyle Logue</b><br>
<span style=3D"font-family:Consolas,monospace;font-size:8pt">
<div><i>Engineering Manager <span><span><span>=E2=9A=9D</span></span></span=
> Comm Software Implementation Dept<br>
</i></div>
<div><i>The Aerospace Corporation</i><span style=3D"font-family:Consolas,mo=
nospace;font-size:8pt"><span style=3D"font-family:Consolas,monospace;font-s=
ize:8pt"><span style=3D"font-family:Consolas,monospace;font-size:8pt"></spa=
n></span></span><span id=3D"gmail-m_-2133530090505569977ms-rterangepaste-en=
d"></span></div>
</span><span style=3D"font-family:Consolas,monospace;font-size:8pt"></span>=
</span></span></div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--0000000000000c4528059d764ec8--


--===============0661461191597412773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0661461191597412773==--

