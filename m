Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4269433D73B
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 16:21:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E172383A3D
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 11:21:40 -0400 (EDT)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5140D383A22
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 11:20:33 -0400 (EDT)
Received: by mail-ot1-f51.google.com with SMTP id 31-20020a9d00220000b02901b64b9b50b1so7036556ota.9
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 08:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lmarlow-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=PwYEmtU7s6sfCIwuEpqNKtSChCPgPZd0w0x9+uFdKjo=;
        b=Vn1qlRB0FOjpU0w/MhlWGPeZ6+4oS8DDRf6IKE+tXSfVnu04Lm9HTaWJpYZJV468LG
         LaaezCvUkLB0V4lOncYSInCU6lK5N40QYUD9cIuG2D0/u4sHHD++w9B2+YGLCz0p8b/c
         TCac7chgzSwaITdFYvyuK26Md36yNAiq/TTLTZwnz5VZxeKG1k0B1/WhU20E+o380uim
         qYMX65nI6sgSvdllYNuFCD0URiG7D7vGWZmhJo/dje5yRCI6PQBSwQOrdgBvxhw38nw7
         gkTlfoFVwPF7c2ta/xGvEltRrzDAHxe+NtFQ8peuqrJuL/BW/O2xZPLIBAdBTYhr9p9h
         8kKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PwYEmtU7s6sfCIwuEpqNKtSChCPgPZd0w0x9+uFdKjo=;
        b=ADwqFZ3ql/FY+0N1vdgKp6aJSDVFOvbB32Xu7NF12YE/3bCbkHR47WqoO4IH2Zo/Lb
         LerDAz4z+2+u3mH8VanQcG0/tp5VCy5/ofUwe2APmreYlfU9hbYF3m8qsZjWwXpaROde
         LUyXlQZNVgUZknKqOVZLHv8b8ltzjRRQhC+idZv9eyCfjrdQeZ5v1b5gzc0sJLDVwXGN
         vZtq7at8DaOpPns+deWISz7W93ERvQWx1BZGktBM4AbmDrUHdq2P0I0iNphj1gsx5Q48
         IzGRoOTM/vq8h3L7R1nui17YkJI40e2G2nLSEebWHVT7KjFqQRTwSfwKqQio+xufQehO
         POew==
X-Gm-Message-State: AOAM5326tdyPxQ4/uueHUZGeqLPvfufeesiEuqmm/RHw09Hy8kZYCSF2
	Y4kX5nlU0QRr9nqth9eJBI0taYIsF+t2t0bcL3zKqV3hE8FU
X-Google-Smtp-Source: ABdhPJxeqW9NSVsuWecrPdSnrXfL4wHHSUelT+dtW7KMlKXmWSU3+9wEcgCOr1NVzThSTi0MOKDxHZLHyNtGeAhANPo=
X-Received: by 2002:a9d:3b85:: with SMTP id k5mr4010579otc.237.1615908032361;
 Tue, 16 Mar 2021 08:20:32 -0700 (PDT)
MIME-Version: 1.0
From: Ryan Marlow <ryan@lmarlow.com>
Date: Tue, 16 Mar 2021 11:20:21 -0400
Message-ID: <CAOHuk9D5U97rJmO1ExSnwz4d=f4ya4uusyi68E1yT7ii0F+UBw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 54KRQ6MUG7ARNQTPIVSTUIIK2HWS7KJP
X-Message-ID-Hash: 54KRQ6MUG7ARNQTPIVSTUIIK2HWS7KJP
X-MailFrom: ryan@lmarlow.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N3xx internal ethernet interface
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/54KRQ6MUG7ARNQTPIVSTUIIK2HWS7KJP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7307747379039404684=="

--===============7307747379039404684==
Content-Type: multipart/alternative; boundary="0000000000004246d905bda8e827"

--0000000000004246d905bda8e827
Content-Type: text/plain; charset="UTF-8"

Hello All,
I have kinda an obscure/deep question about the functionality of the
internal ethernet interface on the N3xx. It is my understanding that this
interface (int0) connects the linux OS on the ARM to the CHDR/RFNoC network
on FPGA so you can run UHD on the N3xx ARM itself. To verify the
functionality of this interface, can I "ping" the IP address (defaults to
192.168.10.2) of the FPGA side on that interface and expect a response?
Using tcpdump, I can see ARP request and replies. Just curious if anyone
has suggestions of sanity checks that are simpler than running
uhd_find_devices or uhd_usrp_probe to verify the integrity of that
interface connection.
Thanks,
Ryan Marlow

-- 
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--0000000000004246d905bda8e827
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div>I have kinda an obscure/deep que=
stion about the functionality of the internal ethernet interface on the N3x=
x. It is my understanding that this interface (int0) connects the linux OS =
on the ARM to the CHDR/RFNoC network on FPGA so you can run UHD on the N3xx=
 ARM itself. To verify the functionality of this interface, can I &quot;pin=
g&quot; the IP address (defaults to 192.168.10.2) of the FPGA side on that =
interface and expect a response? Using tcpdump, I can see ARP request and r=
eplies. Just curious if anyone has suggestions of sanity checks that are si=
mpler than running uhd_find_devices or uhd_usrp_probe to verify the integri=
ty of that interface connection.</div><div>Thanks,</div><div>Ryan Marlow<br=
></div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div>Ryan L. Marlow</div><div>R =
L Marlow Consulting LLC</div><div><a href=3D"http://rlmarlow.com" target=3D=
"_blank">rlmarlow.com</a><br></div></div></div></div></div>

--0000000000004246d905bda8e827--

--===============7307747379039404684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7307747379039404684==--
