Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97143FFE0B
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 06:28:28 +0100 (CET)
Received: from [::1] (port=48754 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWZaN-0006at-DS; Mon, 18 Nov 2019 00:28:27 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:39355)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iWZaJ-0006Tl-TC
 for USRP-users@lists.ettus.com; Mon, 18 Nov 2019 00:28:23 -0500
Received: by mail-qk1-f181.google.com with SMTP id 15so13364914qkh.6
 for <USRP-users@lists.ettus.com>; Sun, 17 Nov 2019 21:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=tA0LlPTUefTmWuhilcGhCsT0TYwVVJV3UAgACRS+yks=;
 b=Ria+jhl81A2xGulIIbl/+Pkn8pcMzMnrvPQE6Cyzbz0xhOPpDD+IQ9kuHxxj+vm5h1
 Gs2xxJ7msLgK90STfF9BywspmZdG48ZhyV0Y0FIgupE8wLMCv+TSXJ0Tm8EHaxXd6VAq
 Swmd7gwipwWw7gRJ4WOUnIhpw6wtlrsfVf/Q8uqhMYgkciuL0cRXCwjB1WMaDuEsXjGD
 7MCdB9m7aHo3vl5zJ14mJ41NNc7gQEwSQxa5jKgdcJo0KBp+U8mEMm9PJJ3vH44b1l0Y
 1zkP1UXl6pj/HnUPul2trB/Gva3/Ep/rOUqQfm7g6imImoK4DzLn5jZ+wGhnyVSmGsW2
 WTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=tA0LlPTUefTmWuhilcGhCsT0TYwVVJV3UAgACRS+yks=;
 b=jd/PDXcjo7VYQ3mvETtvRzfNM11fjW2IomwOUvjCFaQcQ8UiJQSh3sEv3RYzq/0UgP
 2gVOpvxUUfpaHRNlCYjtesueh89A5L8RoJ7VAgwH6qKcY7HizHXberugzHLfdyPfJ8Ls
 ssHtuXNL71Z8XR2u3JFi4YXoM9A7tOL9aLVFoMLa9iPjY7uXzR8v8hwgexnKQ8L6jBbJ
 1Lw8LIIm/rV93XVeGtZLAUbz8VRoGuG7+vi94Z9bd8yT9jPqQwt3CWVSvXv3R3WhRU/C
 XEp1i8/BoyIdo4PvkhWaouQc4KKMcn74ZFyYEb65DViVrGT06e9vKUBNBCbx+02Ri4H7
 jkIg==
X-Gm-Message-State: APjAAAWi1JlDEzZyFa/W6aGdWrJBzjXXw1kNjubiNhDayroK6uzt5rlg
 4PQBCPe7yYNKhZ8F5nGHmrWq7JguA2I=
X-Google-Smtp-Source: APXvYqxzS7pOffdpyVkVWtwtbjey64bihT4YklzuyyiUnC+pGzKQNeIgQnQIBSBn7KKEkeY+LsVB+A==
X-Received: by 2002:a05:620a:149c:: with SMTP id
 w28mr22784255qkj.37.1574054863058; 
 Sun, 17 Nov 2019 21:27:43 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.gmail.com with ESMTPSA id o2sm8110456qkf.68.2019.11.17.21.27.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Nov 2019 21:27:42 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Nov 2019 00:27:41 -0500
Message-Id: <7BAFE73A-6429-4070-B312-839D557B6C3B@gmail.com>
References: <HK0PR03MB5091427A23E5530B6A978CCF9D4D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB5091427A23E5530B6A978CCF9D4D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
To: Thomas james <james_ttfun@hotmail.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] N310 schematic don't show all part
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3735476503850284971=="
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


--===============3735476503850284971==
Content-Type: multipart/alternative; boundary=Apple-Mail-B2048721-019F-4065-97AC-BABABA8B0487
Content-Transfer-Encoding: 7bit


--Apple-Mail-B2048721-019F-4065-97AC-BABABA8B0487
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That is, AFAIR, the properietary PCIE interface that NI don=E2=80=99t publis=
h schematics for.=20

Sent from my iPhone

> On Nov 18, 2019, at 12:12 AM, Thomas james via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi,
> i read N310 mother board schematic find that there should be a sheet 20 bu=
t not in the pdf schematic. what is this part for?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-B2048721-019F-4065-97AC-BABABA8B0487
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That is, AFAIR, the properietary PCIE inter=
face that NI don=E2=80=99t publish schematics for.&nbsp;<br><br><div dir=3D"=
ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite"=
>On Nov 18, 2019, at 12:12 AM, Thomas james via USRP-users &lt;usrp-users@li=
sts.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"=
><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
i read N310 mother board schematic find that there should be a sheet 20 but n=
ot in the pdf schematic. what is this part for?</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-B2048721-019F-4065-97AC-BABABA8B0487--


--===============3735476503850284971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3735476503850284971==--

