Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCC520574D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 18:35:34 +0200 (CEST)
Received: from [::1] (port=52184 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnltT-0001SB-NS; Tue, 23 Jun 2020 12:35:31 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:34054)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnltP-0001Gi-EG
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 12:35:27 -0400
Received: by mail-qk1-f178.google.com with SMTP id f18so19419228qkh.1
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 09:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=piUQUUL894weNW3r9KmTalWlGT4wY616J43zkPk1Gkk=;
 b=si1Kf/2fr9v1sbRTna98MA4BZGXeNvOUloy8IwEG0qplvZzV3FaVp6TNzR+hTn2E8v
 zEQX1eplo0JwBCDv24PoQH+zECZL4W0NwVKg4hKjoDkzbCJprSdtHdWZGfabxPzlB92P
 BiJDV9I4PmcgcLlQG50c6pKuVW1pBGT7zgJas8TIelJ+GokjyJIlFhAcr3zjvqZIq70R
 LJrwnDVGwfFIIfO6ZsT0XqR5dBj0XM2aJvRZJFW0f3T4JKL9tnPlLbQ1jawsbNemX6wb
 Sj7rmsYe42ctjUeVhS9KC3bipUfaz/04z/9Et0uCPpKeFxirHTAOw7ls/NJvO6evA7lp
 i5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=piUQUUL894weNW3r9KmTalWlGT4wY616J43zkPk1Gkk=;
 b=WsBDXOBQg06fy7G8B6PLl0E14JQ5nPtfg9QJkRrVH/ZwmpZ/Ck3NsUIapvu35FcJBe
 exqajGWhiF5LKN7Yp/bROIF9inIOlocDUO6miskhcJ6PF0b2az9gMW72ZML7cKDN7CXb
 C1u/YYEZOTVMH8n6ntyePOII45ILKHDOSapTvrKxcGdBYdTeKPzPE2JNNrIWGzhrcFoh
 JbEPtub7D7euVvmCW+4CWWt6yOYCbV2+/osBYmSrg0JnChvK1+EvBwxfUpU6TOctg8fd
 TH55+UZh5e1TbDNTDBJO4em+lKe/Vw2b0oTNLi19lpqzVSeXoHjgZJeQZP6RNudyF31n
 qC9g==
X-Gm-Message-State: AOAM531ECaXEHkrDUErRxcwaPZWvG95dBYWj0my9L2uWqVXUgb1VjKu0
 Z7LmakQfrAwfJXnQUe6wuM6tz9im/i8=
X-Google-Smtp-Source: ABdhPJzgjxEDVDE0U21rnezueTJIWmK+oEDke+1B6sFPNrDX0SEhOnqHIDip0+kRPlzEwalIIGlD5A==
X-Received: by 2002:a05:620a:16b7:: with SMTP id
 s23mr21920735qkj.142.1592930086834; 
 Tue, 23 Jun 2020 09:34:46 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id n36sm1188737qtc.35.2020.06.23.09.34.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jun 2020 09:34:46 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 23 Jun 2020 12:34:46 -0400
Message-Id: <F2BEB81C-4294-4D40-AD21-C727597F8A28@gmail.com>
References: <CAEXYVK5B=3p7ZA076ftPiUYH6dG13kA+hh227SV5wnDeZow_Pw@mail.gmail.com>
In-Reply-To: <CAEXYVK5B=3p7ZA076ftPiUYH6dG13kA+hh227SV5wnDeZow_Pw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] AM transmission
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2254847384094500587=="
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


--===============2254847384094500587==
Content-Type: multipart/alternative; boundary=Apple-Mail-703FB118-A2A7-4A51-9E5A-483C9F2834D6
Content-Transfer-Encoding: 7bit


--Apple-Mail-703FB118-A2A7-4A51-9E5A-483C9F2834D6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes.  I=E2=80=99ve already suggested offset tuning to deal with DC offset re=
moval.=20

Sent from my iPhone

> On Jun 23, 2020, at 12:21 PM, Brian Padalino <bpadalino@gmail.com> wrote:
>=20
> =EF=BB=BF
>> On Tue, Jun 23, 2020 at 12:08 PM Marcus D Leech via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>=20
>> Phase offset as measured against what, and how would that matter for a no=
t-phase-sensitive modulation?
>=20
> Maybe the 9361 on the B205 could be attacking the AM as an adaptive DC off=
set correction.  Maybe a low-IF approach should be used to see if the proble=
m goes away?
>=20
> Brian

--Apple-Mail-703FB118-A2A7-4A51-9E5A-483C9F2834D6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes. &nbsp;I=E2=80=99ve already suggested o=
ffset tuning to deal with DC offset removal.&nbsp;<br><br><div dir=3D"ltr">S=
ent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Ju=
n 23, 2020, at 12:21 PM, Brian Padalino &lt;bpadalino@gmail.com&gt; wrote:<b=
r><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jun 23, 2020 at 12:08 PM Marcus D L=
eech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Phase offset a=
s measured against what, and how would that matter for a not-phase-sensitive=
 modulation?</div></blockquote><div><br></div><div>Maybe the 9361 on the B20=
5 could be attacking the AM as an adaptive DC offset correction.&nbsp; Maybe=
 a low-IF approach should be used to see if the problem goes away?</div><div=
><br></div><div>Brian</div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-703FB118-A2A7-4A51-9E5A-483C9F2834D6--


--===============2254847384094500587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2254847384094500587==--

