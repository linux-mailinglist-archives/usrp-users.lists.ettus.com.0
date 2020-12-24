Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA322E258F
	for <lists+usrp-users@lfdr.de>; Thu, 24 Dec 2020 09:53:43 +0100 (CET)
Received: from [::1] (port=44660 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksMNP-0007cF-CG; Thu, 24 Dec 2020 03:53:39 -0500
Received: from mail-wr1-f47.google.com ([209.85.221.47]:42025)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rinaldo.mattei5@gmail.com>)
 id 1ksMNL-0007Yy-M3
 for usrp-users@lists.ettus.com; Thu, 24 Dec 2020 03:53:35 -0500
Received: by mail-wr1-f47.google.com with SMTP id m5so1518903wrx.9
 for <usrp-users@lists.ettus.com>; Thu, 24 Dec 2020 00:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=nWLi0YxHcWc+Ut/JtyrTDFEXXJfyE0JcmpnpA2w7jS8=;
 b=nN6TZ9KFYk00VnLcqGKaE8mD8m0T1zFKIjosnztCA+bHHEJYU3acoXOBWZx9NGiBzD
 uJdQ35o964oNbatbg1lV3I5t7s77S3H2KM0EHbyJj8G1J7TtceOT7cfe5fN8t7dezbCh
 ks40wjnctjQZBG0YEJyqLc5Im7DDgZQSiu1eR9MjneNE2gW29Mt0Nvd5UGSPZi4JtEPX
 z0YzSGoNLQBgmDic6lAXY6FiM9l45gF/dTyPFrgx6QWN648D7vHljrIMZNP0ZIvQp1fR
 KSsgbGYffUj+ngFXV+Sw3BmNH2EM/YsiX1alAiWSA6EVUjazsAK0zzWZL/SPaylWR8yv
 SjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=nWLi0YxHcWc+Ut/JtyrTDFEXXJfyE0JcmpnpA2w7jS8=;
 b=E9jI22N6wTm35Zj5M6CI/aOS2sXwrxCbFjSKqqr8uxs1zcEKjbs7m1MSM5UH90xiE7
 lb3OnCWAlOi70BokoH5stPSsf26UzH9W2mTzvlZuKx0iN52HTtN1azL4noOOZF6459C4
 AE9GI7P0CHpFjy5wBFO28I8zX0sy8MOdFCOhviwWBTLtzWIlsMWeqf/23KRlNrJGwd0D
 DLdLrp+vyUWHtv9GN1X/pvDMoQJEkicKOL0Ta+qXtCDvj5mRYlLT27+wXpMwcgPhhOsk
 HiS+TWa1irJ68rTNLqQwcOlP4QwMY3sLeBQ4TFDLH+5yvdUC1dapmt4sl0GociVQpBnT
 nuPg==
X-Gm-Message-State: AOAM531XEpCHFtX/gP8VvIizUKQa/v+m3x9Pnu23kw8BImB/F+cZvsUH
 87DvOGxNpETY8CfKphyiuLvC3KvyDIXsePT5lozMLYwhRM8M2A==
X-Google-Smtp-Source: ABdhPJysMsZggNHn8FXp4xg6TkbXiW6ALQ6PhedouwuXCcoNfqG8CHuWuIXxwDYFc92VxPysNicoF6buEdb9+pc4eqc=
X-Received: by 2002:a5d:68ce:: with SMTP id p14mr32994627wrw.386.1608799974687; 
 Thu, 24 Dec 2020 00:52:54 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 24 Dec 2020 09:52:45 +0100
Message-ID: <CAMiam1K1C7OJHMAnzxo=5tyCe0SxiKbTtUiy4exGYK0xx6jaig@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Where is GNU Radio Live SDR Environment ISO?
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
From: Mattei Rinaldo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mattei Rinaldo <rinaldo.mattei5@gmail.com>
Content-Type: multipart/mixed; boundary="===============4032786327315203021=="
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

--===============4032786327315203021==
Content-Type: multipart/alternative; boundary="0000000000000187f905b731ef5b"

--0000000000000187f905b731ef5b
Content-Type: text/plain; charset="UTF-8"

 Hi to All,

please someone kind enough to give me the link to download the GNU Radio
Live SDR Environment ISO. I have a N210 with GPS and I can't get it to work.
The ping is there but always "UHD device not found". Maybe with this ISO I
would succeed.

I take advantage of this email to make many wishes for happy holidays to
everyone. Best wishes for all good!

Giuseppe

--0000000000000187f905b731ef5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div><span class=3D"gmail-VIiyi" lang=3D"en"><span class=3D"gmail-JLqJ4b gm=
ail-ChMk0b"><span>Hi to All,</span></span><span class=3D"gmail-JLqJ4b"><spa=
n>

</span></span><span class=3D"gmail-JLqJ4b gmail-ChMk0b"><span><br></span></=
span></span></div><div><span class=3D"gmail-VIiyi" lang=3D"en"><span class=
=3D"gmail-JLqJ4b gmail-ChMk0b"><span><br></span></span></span></div><div><s=
pan class=3D"gmail-VIiyi" lang=3D"en"><span class=3D"gmail-JLqJ4b gmail-ChM=
k0b"><span>please someone kind enough to give me the link to download the G=
NU Radio Live SDR Environment ISO.</span></span> <span class=3D"gmail-JLqJ4=
b gmail-ChMk0b"><span>I have a N210 with GPS and I can&#39;t get it to work=
.</span></span> <span class=3D"gmail-JLqJ4b gmail-ChMk0b"><span><br></span>=
</span></span></div><div><span class=3D"gmail-VIiyi" lang=3D"en"><span clas=
s=3D"gmail-JLqJ4b gmail-ChMk0b"><span>The ping is there but always &quot;UH=
D device not found&quot;.</span></span> <span class=3D"gmail-JLqJ4b gmail-C=
hMk0b"><span>Maybe with this ISO I would succeed.</span></span><span class=
=3D"gmail-JLqJ4b"><span><br></span></span></span></div><div><span class=3D"=
gmail-VIiyi" lang=3D"en"><span class=3D"gmail-JLqJ4b"><span><br></span></sp=
an></span></div><div><span class=3D"gmail-VIiyi" lang=3D"en"><span class=3D=
"gmail-JLqJ4b"><span>
</span></span><span class=3D"gmail-JLqJ4b gmail-ChMk0b"><span>I take advant=
age of this email to make many wishes for happy holidays to everyone.</span=
></span> <span class=3D"gmail-JLqJ4b gmail-ChMk0b"><span>Best wishes for al=
l good!</span></span><span class=3D"gmail-JLqJ4b"><span> </span></span><br>=
</span></div><div><br></div><div>Giuseppe<br></div><div><span class=3D"gmai=
l-VIiyi" lang=3D"en"></span></div>

</div>

--0000000000000187f905b731ef5b--


--===============4032786327315203021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4032786327315203021==--

