Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4339C284A8F
	for <lists+usrp-users@lfdr.de>; Tue,  6 Oct 2020 13:00:07 +0200 (CEST)
Received: from [::1] (port=50090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPkhP-0005it-4X; Tue, 06 Oct 2020 07:00:03 -0400
Received: from mail-ed1-f44.google.com ([209.85.208.44]:34199)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1kPkhL-0005cB-82
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 06:59:59 -0400
Received: by mail-ed1-f44.google.com with SMTP id k14so13053842edo.1
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 03:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pnX4KMK9D2+57BWOhjkSYpoV0LqkUDmfxfgfqz6f3i8=;
 b=Xu7fSEMTukRsf5W3tXQv58zwtF7FAlURXA7G1cZ4vVQ/7ckzBgUB/s1jw1pT2UorA0
 vpCo2i2ulbx2ErJNbxtMvaUmasDOUgzVaTnnOg+iaKWaq2OHMwS4mAghRtqO1YN7umQh
 4ZHQ+Jp4JCrP+1DR3d+Jqd+1/t/nWE9E/ivhfrVnJgguTgeJ9g10r502Sp8SdgLrUE6E
 CeZ9G1wy439DWDJWEvV5NIXszyBoYWeBV6qV6CjkpzxkExCoTRJEaJSvoU5XuX9eN2Yu
 004CAnf6HYhP9YWtByBj9DE9fbL9bfJanXiGlag4bQf9WgANEHAzXQY5uaJhEhbm58Tf
 1mFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pnX4KMK9D2+57BWOhjkSYpoV0LqkUDmfxfgfqz6f3i8=;
 b=jqR/xp3cHH+o7A0fqCU5CUTXG5VFHjb6NiyR9Ga2BwmdFksG4j8EYOyPD31Ayb+8fP
 Lv5JCndXr3NszTX41vvDPi7Ey613MpuKhiCUTiK60hmF1O2zPx8FrFRPLGmtGYX+JXTF
 lW3b5iaevay/EU4XKDTl5XDitoqYTwdsXpsqxwGge9V+jzuLuV5Ghq0I+jBiaWzixjSY
 K0zwvUX/h6gwSoiLJZZ9KrKTVxzriXlhQHEYy1dl2ShHHFTbug/tiej8Vqb5JPF9CRaq
 LiqQEAbuYdPux23YXpSej1/D+VuQUyR3QzbOIO3Zi83BQUAJJ4qQ+m8r/ANoRynVuK6m
 OCTQ==
X-Gm-Message-State: AOAM530fMGGQRRk989o9+suukzvMRNEhrDgzKgFfl7fbiimKBzwkUau6
 J0aJY/zCjsBwuKiFd2carBl8pdm9Zb3ElQ3IDZMJVDBsx7zA8g==
X-Google-Smtp-Source: ABdhPJz5M//TtY7CowKQTH37bn8QQjW+mRuBIgldJcRKE4wMEm/gM4XyxCIlJ6nx3PuaofGMGVFCcLGM0ag8Fgq9ZXw=
X-Received: by 2002:a50:d4ce:: with SMTP id e14mr4950821edj.126.1601981957933; 
 Tue, 06 Oct 2020 03:59:17 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 6 Oct 2020 12:59:07 +0200
Message-ID: <CADrptxWYb5Mf83FoQF05PhhH=-r=wU5VTF+v7brk3Pdom3cxGw@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNOC REPLAY streaming to two UBX
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============6484583083105775029=="
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

--===============6484583083105775029==
Content-Type: multipart/alternative; boundary="0000000000008a0c3f05b0fe7d46"

--0000000000008a0c3f05b0fe7d46
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am investigating the option to stream samples from RFNOC_REPLAY block to
two UBX-160 MHz cards with full speed (i.e. 200 Msps for each board).
I would also like to support timing control for both of these two
transmissions.

I am planning to use new RFNOC architecture and UHD 4.0.
However, before diving deeper I would like to hear from you if this is
possible to be done in straightforward manner with the newest RFNOC
developments.

I see from the previous posts
(
http://ettus.80997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay-block-td13915.html
).
That with older RFNOC design and UHD 3.xxx streaming from RFNOC was limited
to a single UBX radio.
Meaning that an FPGA image with 2 Replay blocks was needed in order to
stream samples to two UBXs radios.

What would be the easiest way to proceed with new UHD 4.0?

Thanks in advance on the answers,

Emil

--0000000000008a0c3f05b0fe7d46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am investigating the option t=
o stream samples from RFNOC_REPLAY block to two UBX-160 MHz cards with full=
 speed (i.e. 200 Msps for each board).</div><div>I would also like to suppo=
rt timing control for both of these two transmissions.=C2=A0</div><div><br>=
</div><div>I am planning to use new RFNOC architecture=C2=A0and UHD 4.0.</d=
iv><div>However, before diving deeper I would like to hear from you if this=
 is possible to be done in straightforward=C2=A0manner with the newest RFNO=
C developments.=C2=A0</div><div><br></div><div>I see from the previous post=
s=C2=A0</div><div>(<a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-t=
ransmitting-on-two-channels-with-replay-block-td13915.html">http://ettus.80=
997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay-block=
-td13915.html</a>).</div><div>That with older RFNOC design and UHD 3.xxx st=
reaming from RFNOC was limited to a single UBX radio.=C2=A0</div><div>Meani=
ng that an FPGA image with 2 Replay blocks was needed in order to stream sa=
mples to two UBXs radios.</div><div><br></div><div>What would be the easies=
t way to proceed with new UHD 4.0?</div><div><br></div><div>Thanks in advan=
ce on the answers,</div><div><br></div><div>Emil</div></div>

--0000000000008a0c3f05b0fe7d46--


--===============6484583083105775029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6484583083105775029==--

