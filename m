Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 721DC281A47
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 19:57:34 +0200 (CEST)
Received: from [::1] (port=42424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOPJD-0004QO-SZ; Fri, 02 Oct 2020 13:57:31 -0400
Received: from mail-oo1-f54.google.com ([209.85.161.54]:42730)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kOPJ9-0004IR-LH
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 13:57:27 -0400
Received: by mail-oo1-f54.google.com with SMTP id g26so551010ooa.9
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 10:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=qzn1ILDNKp/taZUpCI/IPbHwhMFXvMawos7sBcCRO/g=;
 b=AzVVGRetVp/ke5kxt9RMcTaoAaDsuL9M5e/mlZXxP/AQN7NPWjDZ8KK1RJbUim1HYk
 dk+WEjlBM+aPQ2UaVF1l6+DXexq2siqyRabQNQ0VIytCfSKUof0Yecg3f4Zt8GXN5L0Z
 3tJsez2U3HPqjdVUM1Gw9zCR5YqgK8iXqlMtKa92WIcH3V+EcBDdG1sM9fRSlGvC6oum
 t6yXl9crglBW5TlCcdUSDg33diueMUPdfcX2jaCi8qQ+g1ETuZwatawSCpFTl+So9N1z
 jdWWELvmOpKLV44v04pTFsfVMKnNrkNS90J6jgGjQblFcCMYOO99PRuQpz8cvfPkvWDS
 hi6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=qzn1ILDNKp/taZUpCI/IPbHwhMFXvMawos7sBcCRO/g=;
 b=Zp2T8p2G6W//98ctkMZgX7CTpsnJFRjMfN0VVOe37Fq2zIqBnTR/D8XNOWElH1zAf2
 UlN5SNXD+921pvV6MGoxVRli0FQ47TMh9k+iiwbWO/cP5N2PSWb/7vRIJ4TdEO0LmWDE
 W+bj8CbyflYN+YO/KfjQRN8ZJV1BxyXIpqmXVoOCKqZ4yhSSVcPI5Pi6wbT1zatRvJBL
 cVHbiRnp6Fe9J/fkY5Pr8SLBDn1yQzGDYK5psvdsjmfjyP9looayjPmrwAAcwvI9HteV
 +r4ATojFM6qrnAYX6aePIl5sV254U1LJhQ6eK7FtxACLIbJ3I+aa9eFk3ZTxqRl+E+HM
 +Z0g==
X-Gm-Message-State: AOAM531fB09+V+dBMu3yP8RVaYhVS7YskMYp9b1KD4rZvCGOkhBTRcT6
 Qa41QymgWSD/5xrCR1MQFPXJi1xc7+O7raW/ERDDcEW9Mt4=
X-Google-Smtp-Source: ABdhPJxYPOiKBfSw+aC80s94ZLjzZQKTIX61t2Ah+qhPX1PxsGeATstrg36o46QRC98OyZYFEzZy+LYukxF+BoLRMNM=
X-Received: by 2002:a05:6820:384:: with SMTP id
 r4mr2760233ooj.62.1601661406629; 
 Fri, 02 Oct 2020 10:56:46 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 Oct 2020 13:56:36 -0400
Message-ID: <CAB__hTQ1azFd2KFH-g0+ASGSfBjCp1FpizqaZS4zcm4i51JJxg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Operating E310 from host?
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5892732641420186261=="
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

--===============5892732641420186261==
Content-Type: multipart/alternative; boundary="00000000000031858105b0b3db33"

--00000000000031858105b0b3db33
Content-Type: text/plain; charset="UTF-8"

Hi,
Is it possible to run an Ettus example app  & UHD on the host PC with an
E310 (rather than running the app/UHD directly on the E310)?  This is a
typical mode for the N310, but I wasn't sure if the E310 supported it.  I
am interested in the answer for both 3.15 and 4.0.
Rob

--00000000000031858105b0b3db33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>Is it possible to run an Ettus example app=C2=
=A0 &amp; UHD on the host PC with an E310 (rather than running the app/UHD =
directly on the E310)?=C2=A0 This is a typical mode for the N310, but I was=
n&#39;t sure if the E310 supported it.=C2=A0 I am interested=C2=A0in the an=
swer for both 3.15 and 4.0.</div><div>Rob</div></div>

--00000000000031858105b0b3db33--


--===============5892732641420186261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5892732641420186261==--

