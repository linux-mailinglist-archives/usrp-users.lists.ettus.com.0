Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C00ACF1BEE
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2019 18:01:17 +0100 (CET)
Received: from [::1] (port=51442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSOg8-0001EX-OB; Wed, 06 Nov 2019 12:01:08 -0500
Received: from mail-qt1-f174.google.com ([209.85.160.174]:41402)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iSOfI-00062d-DL
 for USRP-users@lists.ettus.com; Wed, 06 Nov 2019 12:00:16 -0500
Received: by mail-qt1-f174.google.com with SMTP id o3so34441461qtj.8
 for <USRP-users@lists.ettus.com>; Wed, 06 Nov 2019 08:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:subject:mime-version:to:from:in-reply-to
 :cc:date:message-id:references;
 bh=vuJ/nb4Uz4n64aQE2DE4uLIKTcmPFWdsH/wqxsQ1Ij4=;
 b=OfhHLq7JuiEjZWISfkWMu9xTgeYCd6jMRz+x408WrJBKX8IyTJGBnH6jFBCYxPkoAW
 hzwnjMyeaAHXbBJrdS+FldllC7WOrwRJa8N02F3rIiSPu3H2AKeX9pKsENe2g8TmFUTW
 2jt/ZC4NIph5FleIOe4AdSEOOq8gaeCYG0GvJIvEKIYiK3RR40t3v+AY+qZ+a/TFqiRx
 /TSunfy7bulJdU6KgUkkt/MBDuRCom70gO/LlAnukuAjfkTJTIkD1Bbx86E3+5BgpkWd
 ES36Fd8fdANUJVp0uC8FcbuL2cCSjGGUfpJvhXSSU3gKtiUOtuQmsLqcaNiBjMhcLOCB
 0xDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:subject:mime-version
 :to:from:in-reply-to:cc:date:message-id:references;
 bh=vuJ/nb4Uz4n64aQE2DE4uLIKTcmPFWdsH/wqxsQ1Ij4=;
 b=P6JXeNvvZM9wKXTYKD7lnY3h3vDnMSYWh+e1HvtaN+tWR74XFrlS987lyLiU0gGlfB
 8HiNkQT1pRcLN3vHtQB2sgWrfMSDTx6xHrBZD7JbvOPj8xqBrGz88YIlZ5MbpZXtJpTY
 4CuZpT7XdQZPMe7OANi1AsUq3HzYhPTsVrXqrRKDYWl1B9Z/bhm1pv45rw89NQwm+9xY
 28G8ubgkIE66DjttudMzMkGMDwCBrda2bhyf6nOUpX9y57uG8zE4NwxQvtvaIsDPlKqS
 ZdKowQ0mQgMDZ5hxKAairiz7MgoU9g89ZRFG65dX9B4aFEARmlLoKNqxAkntyFPnH9ma
 jf6A==
X-Gm-Message-State: APjAAAX6INXdvuHmvkl1p+o8nPUPf+4zi/42ohf44R0XufUBFszsoWp6
 ft/R6gQuF3lFcxRwuw1bVcgzxv7uXfg=
X-Google-Smtp-Source: APXvYqy4od6+wDQAPz4mnRuQkEMYZ8E4YO1SgYSGnQ0nwxGtDt3lJC3hX8Oo4fj8W2pvgEUs6SAT8Q==
X-Received: by 2002:ac8:7258:: with SMTP id l24mr3461926qtp.124.1573059575684; 
 Wed, 06 Nov 2019 08:59:35 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.gmail.com with ESMTPSA id o3sm23333331qtf.84.2019.11.06.08.59.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:59:35 -0800 (PST)
Mime-Version: 1.0 (1.0)
To: Olivier Ravard <olivier.ravard@novagrid.com>
X-Universally-Unique-Identifier: 5662A84F-DA64-47BD-87D6-FCDF049DA2EB
In-Reply-To: <978d5f24-1129-7f41-1a63-9e219b0f2fee@novagrid.com>
Date: Wed, 6 Nov 2019 11:59:34 -0500
X-Apple-Message-Smime-Encrypt: NO
Message-Id: <DC77B03C-58E3-4BD9-81AA-750F82B2C917@gmail.com>
References: <978d5f24-1129-7f41-1a63-9e219b0f2fee@novagrid.com>
X-Apple-Notify-Thread: NO
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] TwinRx transfert function
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2676801768887819171=="
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


--===============2676801768887819171==
Content-Type: multipart/alternative; boundary=Apple-Mail-DB1AB944-0F6B-4E5A-BDB2-5ECF2F0135DB
Content-Transfer-Encoding: 7bit


--Apple-Mail-DB1AB944-0F6B-4E5A-BDB2-5ECF2F0135DB
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That is more passband ripple than I would expect.=20

What is your tunes frequency. What gain setting? Are you getting overruns du=
ring the measurement?


Sent from my iPhone

> On Nov 6, 2019, at 6:32 AM, Olivier Ravard via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> We use X300 with 2 TwinRx boards for acquisitions in L band (UHD 3.10.3).
>=20
> It seems that the transfert function of the couple (X300 - TwinRx) shows s=
trong fluctuations.
> To measure these fluctuations, we put a white noise generator at the input=
 (this generator was
> measured before with a spectrum analyser and it show a very flat transfert=
 function over 1 GHz)
> and we measure the PSD of the sampled 80MHz bw signal for the 4 inputs.
>=20
> The result is shown on figures below:
>=20
> inputs 1 and 2 (first TwinRx):
>=20
> <bbhnehmblikapiem.png>
> <fpnpgddncnklhkma.png>
>=20
> inputs 3 and 4 (second TwinRx):
>=20
> <lfkojlkpiadfgnml.png>
> <bnokbonaahldkokn.png>
>=20
> Are these fluctuations normal ?
>=20
> regards,
>=20
> --=20
> Olivier
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-DB1AB944-0F6B-4E5A-BDB2-5ECF2F0135DB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That is more passband ripple than I would e=
xpect.&nbsp;<div><br></div><div>What is your tunes frequency. What gain sett=
ing? Are you getting overruns during the measurement?</div><div><br></div><d=
iv><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Nov 6, 2019, at 6:32 AM, Olivier Ravard via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <p>Hello,</p>
    <p>We use X300 with 2 TwinRx boards for acquisitions in L band (UHD
      3.10.3).</p>
    <p>It seems that the transfert function of the couple (X300 -
      TwinRx) shows strong fluctuations.<br>
      To measure these fluctuations, we put a white noise generator at
      the input (this generator was<br>
      measured before with a spectrum analyser and it show a very flat
      transfert function over 1 GHz)<br>
      and we measure the PSD of the sampled 80MHz bw signal for the 4
      inputs.</p>
    <p>The result is shown on figures below:</p>
    <p>inputs 1 and 2 (first TwinRx):<br>
    </p>
    <p><div>&lt;bbhnehmblikapiem.png&gt;</div><div>&lt;fpnpgddncnklhkma.png&=
gt;</div></p>
    <p>inputs 3 and 4 (second TwinRx):</p>
    <p><div>&lt;lfkojlkpiadfgnml.png&gt;</div><div>&lt;bnokbonaahldkokn.png&=
gt;</div></p>
    <p>Are these fluctuations normal ?</p>
    <p>regards,<br>
    </p>
    <pre class=3D"moz-signature" cols=3D"90">--=20
Olivier
</pre>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-DB1AB944-0F6B-4E5A-BDB2-5ECF2F0135DB--


--===============2676801768887819171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2676801768887819171==--

