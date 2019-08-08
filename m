Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7394B866CA
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 18:17:28 +0200 (CEST)
Received: from [::1] (port=55212 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvl6T-0004UC-Qg; Thu, 08 Aug 2019 12:17:25 -0400
Received: from mail-lj1-f182.google.com ([209.85.208.182]:34801)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ishai.alouche@gmail.com>)
 id 1hvl6Q-0004O2-GU
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 12:17:22 -0400
Received: by mail-lj1-f182.google.com with SMTP id p17so89464119ljg.1
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 09:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Ko6GsmTUjUN4/+WaadlpeohRs4SUpph1R4ZPcAS1wCY=;
 b=qEsAXXe//P56Bi/+M1Q7g9ZP/f+kyJrSNq9i8OeVxZ8tn+wFjTKSK2n/DRhsrjj6Pc
 WWsYvOuw6k6cYfL87DCzInH1NUu/z/EUyxC2kMxLYTCmh8s6GkqHnZBSG97v0DWSWdfS
 8IM87XkvYRhzRDHzF7l4xSxIT7E7KpLeIoqr+fNVikY4izGg0Eo+YdJ9ajyK+tsBiWYB
 O3tOxkHqO+qrukdsAUtY8eBmTXWL7jbOj5rXxIRwjbrl2uZUIpIbs4xWleUlT90Y6pZI
 dkPPrGD1J0imNo9L0nO1NMhqEVUcmmZOjWKAO65ISV/bvO1XGX5AbNJpF/iYgDmWW+aL
 243w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Ko6GsmTUjUN4/+WaadlpeohRs4SUpph1R4ZPcAS1wCY=;
 b=Us9NES/nkM5fEd1jU1QMBxcOaS947Kvw6QnlpiKvx62NaFYF2fN9cCGcCjek5yx0DX
 akjsPJ4j5d+lzzV7UbaZLWUirwisMG7k7mPN2CuB/ASN1zRNVYSpi3eQ1vx7ax6a7P+W
 3OPBUZDVzes3487DIAMU/CtyMyOilnRSypesO22TP6M3y0xySmsn7oKos4J1QboOgHAC
 LZJKXeLGPPN7kiUCpVCT4m6TT71x3gBKnLXC5MEbZS/q8SUkCkPr/m/7YZiK1cp7CNpN
 gCSNVV6uDKi4MTkgVa3/Jve/r3OeTW1tQ+2WKtLV352QAWJuccp0GKom2OD1jywfboP3
 Nqkw==
X-Gm-Message-State: APjAAAVMPn+7l3N7cu30/jX9kuo+O+tYW5JWqoWf3L4Og55EVLiL+mww
 vYNtwRde3j9psbPdCMXkdhZUjBCCsWo+NH8r4Zbi1YyN
X-Google-Smtp-Source: APXvYqz6QJsR8b6CSLpLIChZhSXAcl6AU9cswiHB3ehbut9bs9D1aGvDZxsRFS1R0WzBSm9GAgozaU+LMFqzGxonUAo=
X-Received: by 2002:a2e:894a:: with SMTP id b10mr7536510ljk.99.1565281000965; 
 Thu, 08 Aug 2019 09:16:40 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 Aug 2019 19:16:29 +0300
Message-ID: <CAC8T01neWOsGOZ4ezt5wf4owgc9ftjcZ-O2EAHgtzAA7wGOKoA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] x310 cannot receive data
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
Reply-To: ishai alouche <ishai.alouche@gmail.com>
Content-Type: multipart/mixed; boundary="===============4474199568518562392=="
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

--===============4474199568518562392==
Content-Type: multipart/alternative; boundary="0000000000000949ed058f9d6232"

--0000000000000949ed058f9d6232
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using X310 and i try to create very simple setup.

The gnu-radio include the following blocks:
*RFNoC:* Radio --> *RFNoC: *DDC --> Copy --> Sink.

The input signal came from synthesizer.

I run the gnu-radio and the sink window open but I don't receive any data.
When I start the running the X310 turn-on to red the led called link (near
to the GPS led).

can someone please explain me what is the meaning of the red led? This is
the problem?

Another little issue, the X310 can work without gnu-radio at all? i.e. work
only with gnu-radio blocks and without any RFNoC blocks?

Thank in advance
Ishai

--=20
=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
054-5823400

--0000000000000949ed058f9d6232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><d=
iv><div>Hi,<br><br></div>I am using X310 and i try to create very simple se=
tup.<br><br></div>The gnu-radio include the following blocks:<br></div><b>R=
FNoC:</b> Radio --&gt; <b>RFNoC: </b>DDC --&gt; Copy --&gt; Sink.<br><br></=
div><div>The input signal came from synthesizer.<br><br></div><div>I run th=
e gnu-radio and the sink window open but I don&#39;t receive any data. When=
 I start the running the X310 turn-on to red the led called link (near to t=
he GPS led).<br><br></div><div>can someone please explain me what is the me=
aning of the red led? This is the problem?<br><br></div><div>Another little=
 issue, the X310 can work without gnu-radio at all? i.e. work only with gnu=
-radio blocks and without any RFNoC blocks?<br><br></div><div>Thank in adva=
nce<br></div><div>Ishai <br clear=3D"all"></div><div dir=3D"ltr"><div><div>=
<div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D=
"ltr"><div>=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9</div>
<div>054-5823400</div></div></div></div></div></div></div></div></div></div=
></div>

--0000000000000949ed058f9d6232--


--===============4474199568518562392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4474199568518562392==--

