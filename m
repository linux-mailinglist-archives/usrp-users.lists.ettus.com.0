Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EDC2592DF
	for <lists+usrp-users@lfdr.de>; Tue,  1 Sep 2020 17:18:11 +0200 (CEST)
Received: from [::1] (port=33230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kD82w-0005U2-5y; Tue, 01 Sep 2020 11:18:06 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:46761)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kD82s-0005Ma-1S
 for usrp-users@lists.ettus.com; Tue, 01 Sep 2020 11:18:02 -0400
Received: by mail-lf1-f45.google.com with SMTP id u27so982759lfm.13
 for <usrp-users@lists.ettus.com>; Tue, 01 Sep 2020 08:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=V/z+QnT3RkrlrQV/uwCawfACIKhQvintVHe+KdBhEzw=;
 b=cOpQOuQ+oySAX63eRqVkcp4AhICOnZ+ziR71IZ1g5eDeHCS+XkJSSXG9GgTDzwTpKR
 k4LNAgEg+4SX2YPnyF/MWeL5tsQAVIqYHxqZ0aiG5dQ/VMfdaTY63NmYcWcVstBR1H95
 t78y74u83ho9fhpnhF5cWLveq0Vq/936dY7EnBbbfGFc37L/6ptrslnnW08eVOLhQzE6
 N6WWogUSlZb15mxzlkDqvdNNkaTZ5RYTyHC54DKgAe12G61aFshKhTmjfo3H6/lXXEzh
 A9FGwWv/USTm4itK/bAkMmcxwFA3+8PEKjqrPAl/JqYq4ZZTFBd2WPwSDWwkgZmwNJM9
 Tx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=V/z+QnT3RkrlrQV/uwCawfACIKhQvintVHe+KdBhEzw=;
 b=Mkr3p7RJcYzFTN94P6UpOq7mY5k7P3pcWRIl4UPk/g6p5gbEQoTkl5/U9mHyTXGk5H
 0gc5h54MVlUNv//QL25VnLF3xrs1qmqLLVZY+2LF8l53YqVGh2XLfKz/uYUSmqgy1mE9
 RmDF3Bvxa3TzurN0Rg7ZPfrTzsoSWGz5hSBAlsnqCmPz1JHAwawNymirVDmF//ry+jwd
 RgfNJ/SyAEMtrF54prDF9Q+uPYlpuDmK81d056Bypd4csbSSAvftLi1PEzJY+leAmWmQ
 zbDVrDbvZVVmhDrXbh4YMJHrxPMTiRq4fyc51e/dA2LfqHOF7dqjZJPjhWuzzQ5psW/q
 61uw==
X-Gm-Message-State: AOAM530Cwv8iSnn2fxN+DCe4ie/MDJa4W0m7MxjV/6tV31AbJ6j/dhBk
 r6G4yRsYh2J4r9KUCg6P0QZagaHkBpUx+YzKSRsEsw8ND5HT1zo3
X-Google-Smtp-Source: ABdhPJy9PNiXs5AI4L2fpfsTV6DZl2qUGGwPnsFqygT26qfCheLiuEbYXs9z9snEBQCBR9VS4lrnZPnRogBWephSSRk=
X-Received: by 2002:a19:48d2:: with SMTP id v201mr881277lfa.96.1598973440005; 
 Tue, 01 Sep 2020 08:17:20 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 1 Sep 2020 09:17:08 -0600
Message-ID: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] External Oscillator with Ettus N310
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============1136264984869338215=="
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

--===============1136264984869338215==
Content-Type: multipart/alternative; boundary="000000000000e5b51c05ae42038a"

--000000000000e5b51c05ae42038a
Content-Type: text/plain; charset="UTF-8"

  Hi all,

Sorry if this is coming through twice - I sent it once before I subscribed
to the list, but didn't know if it went through or not! (I didn't see it in
the archives...)

-------

I'm having some trouble using an external reference with the Ettus N310.
The reference I am using is a FS725 Rubidium Frequency Standard.

To test the difference between the internal clock and the external
reference, I transmitted a 10MHz signal from the Ettus N310 with and
without the external reference. Using just the internal clock of the SDR,
the 10MHz signal slowly wanders with respect to the 10MHz signal from the
Rubidium Frequency Standard as seen on an oscilloscope. This is to be
expected since the stability of the internal clock in the SDR is worse than
the Rubidium Frequency Standard.

However, when I connect the 10MHz signal from the Rubidium to the external
reference of the N310 and tell the N310 to use the external reference, the
10MHz signal that the N310 generates wanders much faster with respect to
the 10MHz signal from the Rubidium. This is opposite of what I believe
should happen, assuming the N310 is truly using the external reference
signal.

Have any of you experienced this or have any tips as to what might be going
on?

Thanks!

-Chris

--000000000000e5b51c05ae42038a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 Hi all,<div><br></div><div>Sorry if this is coming =
through twice - I sent it once before I=C2=A0subscribed to the list, but di=
dn&#39;t know if it went through=C2=A0or not! (I didn&#39;t see it in the a=
rchives...)</div><div><br></div><div>-------</div><div><br></div><div>I&#39=
;m having some trouble using an external reference with the Ettus N310. The=
 reference I am using is a FS725 Rubidium Frequency Standard.</div><div><br=
></div><div>To test the difference between the internal clock and the exter=
nal reference, I transmitted a 10MHz signal from the Ettus N310 with and wi=
thout the external reference. Using just the internal clock of the SDR, the=
 10MHz signal slowly wanders with respect to the 10MHz signal from the Rubi=
dium Frequency Standard as seen on an oscilloscope. This is to be expected =
since the stability of the internal clock in the SDR is worse than the Rubi=
dium Frequency Standard.</div><div><br></div><div>However, when I connect t=
he 10MHz signal from the Rubidium to the external reference of the N310 and=
 tell the N310 to use the external reference, the 10MHz signal that the N31=
0 generates wanders much faster with respect to the 10MHz signal from the R=
ubidium. This is opposite of what I believe should happen, assuming the N31=
0 is truly using the external reference signal.=C2=A0</div><div><br></div><=
div>Have any of you experienced this or have any tips as to what might be g=
oing on?</div><div><br></div><div>Thanks!</div><div><br></div><div>-Chris=
=C2=A0</div></div>

--000000000000e5b51c05ae42038a--


--===============1136264984869338215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1136264984869338215==--

