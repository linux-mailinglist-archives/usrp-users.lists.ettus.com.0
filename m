Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C8C23CBC1
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 17:39:22 +0200 (CEST)
Received: from [::1] (port=41492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3LVf-0000WN-8E; Wed, 05 Aug 2020 11:39:19 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:39567)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1k3LVb-0000Rt-Bc
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 11:39:15 -0400
Received: by mail-ej1-f50.google.com with SMTP id f24so26402843ejx.6
 for <usrp-users@lists.ettus.com>; Wed, 05 Aug 2020 08:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=iNMakXfFGVmRyx4KBUlyipDrUww0EZIxSuCz/L21ztk=;
 b=NqkjkoCd4YqePci3KHBe8Qb1T+nBz8p8Mz6TPu5HkInMAp3S0jChStO2s/OC+oxyQm
 vj4KIDz9YAuxveVUF1v1MoX4y8MmwMgqQ/o5tF+uaBoAdfmX+ZTroe9fbTqof3Urj3dz
 jXqUKvh1dO3w7vsET6JBOjZxl0jJZNqIOL9ZBgebXJ6HcKslsxAbvUTxwwm8sy1GNJHC
 4JKik+HQWklKnGeBvErIlXTOicvumekT/lI/JKEVBo5air1DmjGvW6wIdmzU7SDfJIHS
 0QEbny6KnnrwsqFGDt2HPoFEh83OjxWcxLnklNA22wEwsBh8wfhMtztD9uW6/i90vqWz
 3efg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iNMakXfFGVmRyx4KBUlyipDrUww0EZIxSuCz/L21ztk=;
 b=KDUZNODXNqa8NZxb1vkQrZtkm8w3FGwTyBj0oJLLLF9/RpM2CI5gIpYiyQdwFFlMeA
 2wAiVjKLDSJepzJE06fYFDgavhaxglXRZ/o7OyS2CuchzNesvpTtFxXJCuf24PvZCI99
 lBmomiU0o0Qd8VW6H3zlKXSmDK9LFXfuu1kSgmDgi6Kp72dnNIhh1hnh0sBJPVwBIvXf
 bn9+6Lhj920DjNY2AG7j9rbYP1UV5js+NdFpGLohy/fMP8US0Uw+VA1Y4z55FMBHeObR
 FwhpItrfkCw/swRObgAjdfWf1Ko0ub1iOgryq5/pf4C6o1/9GSBZmHwO3+EJrNH2tA6B
 FjTQ==
X-Gm-Message-State: AOAM533MVnuUiJmXxLQSbmDyzWfn4inDNbn5hl+skx9F6Voxk/gTyKVK
 RpPHLPqOYSRMeOEAKazk1dWH9p2/isxK+knPE0vFQA==
X-Google-Smtp-Source: ABdhPJzLFKxAXrfv1DFNCZNAxeBOJHcTNgLnDO7xKx8G403U8gPjb97UOJdD0Te0B24e99o+e/tsvjjWHFIuBfhQUt0=
X-Received: by 2002:a17:906:3842:: with SMTP id
 w2mr3790654ejc.273.1596641914001; 
 Wed, 05 Aug 2020 08:38:34 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 5 Aug 2020 09:38:22 -0600
Message-ID: <CAH2Hh73H+WuztDZjzi3EgtACouxp7teR8y=aA6qYthZ24vyvsQ@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: [USRP-users] B200 GPSDO Specs
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============4067246839069238405=="
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

--===============4067246839069238405==
Content-Type: multipart/alternative; boundary="0000000000001e1e7505ac232a8f"

--0000000000001e1e7505ac232a8f
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to understand the spec for the Ettus TCXO for the B200, and for
GPSDOs in general.

The performance when the oscillator is unlocked is clearly stated as 75
ppb. The spec says this deviation is primary driven by temperature
(Frequency Stability Over Temperature = +/- 7.5e-8)

What spec should be most indicative of the performance while locked?

I notice the ADEV is 10 ppt at 1 second. Is this the timescale that is most
relevant for the B200's PLL?

Is there a component in the B200 that would limit the radio's frequency
accuracy or stability, given a perfect external reference?

For example, if I bought a GPSDO with an ADEV < 5e-13 at 1 second, would
the radio be able to realize this improvement in reference stability?

Thanks,
Aaron

--0000000000001e1e7505ac232a8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am trying to unders=
tand the spec for the Ettus TCXO for the B200, and for GPSDOs in general.</=
div><div><br></div><div>The performance when the oscillator is unlocked is =
clearly stated as 75 ppb. The spec says this deviation is primary driven by=
 temperature (Frequency Stability Over Temperature =3D +/- 7.5e-8)<br></div=
><div><br></div><div>What spec should be most indicative of the performance=
 while locked?</div><div><br></div><div>I notice the ADEV is 10 ppt at 1 se=
cond. Is this the timescale that is most relevant for the B200&#39;s PLL?</=
div><div><br></div><div>Is there a component in the B200 that would limit t=
he radio&#39;s frequency accuracy or stability, given a perfect external re=
ference?</div><div><br></div><div>For example, if I bought a GPSDO with an =
ADEV &lt; 5e-13 at 1 second, would the radio be able to realize this improv=
ement in reference stability?</div><div><br></div><div>Thanks,</div><div>Aa=
ron<br></div><div><br></div><div><br></div><div><br></div><div><br></div></=
div>

--0000000000001e1e7505ac232a8f--


--===============4067246839069238405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4067246839069238405==--

