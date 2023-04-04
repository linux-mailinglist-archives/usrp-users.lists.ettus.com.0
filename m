Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C077F6D6DB2
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 22:12:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB269384891
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 16:12:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680639171; bh=zrGYWsiE8RVq7Wa1XoKDqT4xH/r0o+XI2tR/igEWiNM=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HewhMTxI2lhBGvGkJiB2gxhqko5EDRNtU36unNX9NRAJTQ8QGdXCUVL0WoHw0kejo
	 /TrjctTU54IRpdSVIrmAYTYg6ciUfp8zjezYtXF8TYE5RrmXSyRdMjM1pWYFQg7HRL
	 GPtrGeO0aK4uzLnzEgOaDZK6gFFdyqOiRHV6JWRSGG3TlSL954G8KrABcv128yzZfz
	 HioxSsnQc9I4oYrsId9l4AiqnZXD2szXkgoyqchRrrVzsxSQ+oj4f1DY/BsCOkfFa6
	 BfBlrH/fOM9+DN58zez00T9N8G/VdNtMaX7I5r0NJACKpR06zCRJMCfBvCzRzbwxOh
	 d3Grv57FWzJ8Q==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 98CEA384875
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 16:12:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WGCDFs9c";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id ek18so135476394edb.6
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 13:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680639138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GMU1yTsZZ16rXrwy1MM1h5+Gio1VhAoz2Z1ZcQfC9F8=;
        b=WGCDFs9cXG7gD0TQGY/Lhv3QFku1wTPcKnIo/0U5ulTeQRFpgZN27OHn2cTDVEJ+ph
         VomCjje8Rq34G6qEcnwXAmW4e2WHOGv+k//krp1fxSZzA7y/cULCmafi8/wNiriHNgvu
         k40J9PWGTA6bQro9TB9xg3P7AFBEZ9rcmxEzVJkq97iZm7C63fE97sUkZ40+fobSBaQQ
         0tJZ7+q9sucCeMEGKX13du83ycpwJMkMtQ1z01ONUxwpE2b0E4giM6fq+daIo3bZ4RbY
         MsUMNtBNSBpQP57x+0Z8gZyd8OvTqytY3kpIBR25hB0YvojhGNuFI/u2TokeLXovJKi3
         teSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680639138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GMU1yTsZZ16rXrwy1MM1h5+Gio1VhAoz2Z1ZcQfC9F8=;
        b=jeeUJ+O93nQBRdqhuO8/6oQv+v1DS0tnYP8wjF7WwifeVO3CFpJpHj+eXp3asyok2a
         4M4AszfbQjvaYFlOcQdH4iOMoAbKdHVyk/SKDmOWuWU05KsBadcyaM3A2ff2opehONgO
         ZNv/YcCfXXO22Wr1uZvz83q77CV3Eac8jYBNseKmR/ynqyvjM3utow+/5IJjJR8pOzg9
         OMN1EjZ/IESSfsclHrXYReb0N7cq/mcormEwULyxgmC4o0QiCG7EgK0JzZmPDGNJDAGp
         0CUCGdOL+05XqbY15XIVFRturuRGtGePnqSfXmuwTUCuHts6rOpqSgBbR+9eyje/Q8QD
         Wyfg==
X-Gm-Message-State: AAQBX9c+dqWLTJ5eBoBFZ0VDDDNM2XQe9LIrnTWGvf42mg/PFEmiDhPj
	6L2AvsA5Djjb7dN6e+H7+6F81eFDhOO7Wu99H26A9Q==
X-Google-Smtp-Source: AKy350YtLZLiWW3TcDsOoetf8OfLkOMeQ76OFvbj4hacBev3dLcRB1DIkYakexrvUPNQ/nBg8XjDS3l38UwQYnlQ6wg=
X-Received: by 2002:a17:906:b6cd:b0:8b1:cd2e:177a with SMTP id
 ec13-20020a170906b6cd00b008b1cd2e177amr402163ejb.6.1680639138226; Tue, 04 Apr
 2023 13:12:18 -0700 (PDT)
MIME-Version: 1.0
References: <GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk@lists.ettus.com>
In-Reply-To: <GPX3Wf5RSzJeic6dGMqhinzNWUlSuSWpvEQp6qk@lists.ettus.com>
Date: Tue, 4 Apr 2023 16:12:07 -0400
Message-ID: <CAB__hTRyJ=379O7m6=Tm1Bfp4b0E2y2mxxw_CmdjLdgQd__09Q@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: MRR4LBVYODQCTSLZN5KVMXARMPRGPHW6
X-Message-ID-Hash: MRR4LBVYODQCTSLZN5KVMXARMPRGPHW6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRR4LBVYODQCTSLZN5KVMXARMPRGPHW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7296145645592508260=="

--===============7296145645592508260==
Content-Type: multipart/alternative; boundary="000000000000d51f4205f8884a3a"

--000000000000d51f4205f8884a3a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have only used the Intel cards such as Intel XL710-QDA1 or Intel
XL710-QDA2 and I think that the utility is the following:

https://www.intel.com/content/www/us/en/download/18190/non-volatile-memory-=
nvm-update-utility-for-intel-ethernet-network-adapter-700-series.html


On Tue, Apr 4, 2023 at 3:52=E2=80=AFPM <h57jafari@gmail.com> wrote:

> Hi Rob, thank you for the comments.
>
> I checked with StarTech support team (the manufacturer of XL710 NIC,
> B07983NGQH). But they are saying that it does not have the functionality =
to
> set as 4*10G.
>
> I was wondering what model of XL710 NIC do you have that worked or what i=
s
> the utility tool you mentioned. Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d51f4205f8884a3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have only used the Intel cards such as=C2=A0Intel XL710-=
QDA1 or Intel XL710-QDA2 and I think that the utility is the following:<div=
><br></div><div><a href=3D"https://www.intel.com/content/www/us/en/download=
/18190/non-volatile-memory-nvm-update-utility-for-intel-ethernet-network-ad=
apter-700-series.html">https://www.intel.com/content/www/us/en/download/181=
90/non-volatile-memory-nvm-update-utility-for-intel-ethernet-network-adapte=
r-700-series.html</a><br></div><div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 4, 2023 at 3:52=
=E2=80=AFPM &lt;<a href=3D"mailto:h57jafari@gmail.com">h57jafari@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Hi Rob, thank you for the comments.</p><p>I checked with StarTech support=
 team (the manufacturer of XL710 NIC, B07983NGQH). But they are saying that=
 it does not have the functionality to set as 4*10G. </p><p>I was wondering=
 what model of XL710 NIC do you have that worked or what is the utility too=
l you mentioned. Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d51f4205f8884a3a--

--===============7296145645592508260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7296145645592508260==--
