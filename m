Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2163D12530
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 01:38:11 +0200 (CEST)
Received: from [::1] (port=53632 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMLH6-00013X-QO; Thu, 02 May 2019 19:38:00 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:34177)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <dan.cajacob@gmail.com>)
 id 1hMLGZ-0000y3-5O
 for USRP-users@lists.ettus.com; Thu, 02 May 2019 19:37:57 -0400
Received: by mail-io1-f52.google.com with SMTP id h26so3786226ioj.1
 for <USRP-users@lists.ettus.com>; Thu, 02 May 2019 16:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6olFzCbTpKitiOsdCbb9uBCC6ytpnzr2FWc5hqNbojk=;
 b=W7XXGFi2IZlYyFNhz9soEJ5CkckY5keJnFNnTQ1dR9wmZ1ej40+lLlMdM2wltzjvOo
 OGvOOQhVmqGLtifW67/ln6bkONaSN7yArGF2u6P8imFaF9Cp81KqrK9sZZ+XUqHjQ1Jb
 PHu6OpHC9cJH1L5lFszokDXhD5HoR6EEOmW282Tj4V7alzUT/R2/uPDKX8AgSkgOMLp6
 aJirrAo5gvvbD27l9IlDj6kQvJpfEZPKG7mhmEqKey5hJKeroi/fZn/VaXmMwU89ULCf
 ZpH9A6JqJToajpYd2jIZ4JsDfFK1/MSRCHP8qzmYqob0WkgvRZ5o0Wq8RhuTBWsbAjEl
 CJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6olFzCbTpKitiOsdCbb9uBCC6ytpnzr2FWc5hqNbojk=;
 b=N5nPsQyj/cnQb5xO/FeeWv5u/f/SNsHDNnFjP4ypI6whIwvOXO+xHsxJzab04N53SV
 5OikhXw1RJovRCwUMTg0esgLZFFq3dxReRSpRnzucU2vf/tJ1FECawr4O0uwO9Nrexly
 hkff1kCFhs3YGuPVFSJBPNmFlZ7Fdc2rrcXdWa/nJipnilUfQuCmItZXs0TKOJ76CD2r
 Nz9pM9Y6kKUNB5qPyFsxSULeP3C91VGX7wbQ639RdvPmN0qkdeF1FKoEolJ6W+DKMhhk
 JWZ0mVuXIghJ2ibt+LCsR/HQD1MJZNP4k1tXqrtndTJM2jNgZxtAba+MbuLjSmUdEhFH
 mg2Q==
X-Gm-Message-State: APjAAAUhAcfEegucdIXH8BZN9YBQj6iQ0I7j+lRFlzCwQ7w4LrDCnNC6
 pLJvmHhBohsikK6kZYPs7hsl+44aLIZcNAml18CB6rSr
X-Google-Smtp-Source: APXvYqwC+y3etxYhi8FloZUVabpWUDunJASV0lyb881ioCAG/bntBhTk+7bygyhwbqbBwnqR2FChPeJiKc67kwjsPqM=
X-Received: by 2002:a5d:8f8c:: with SMTP id l12mr4505810iol.205.1556840206191; 
 Thu, 02 May 2019 16:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB234044BC5B1A1DABAE6496C9AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Thu, 2 May 2019 19:36:34 -0400
Message-ID: <CAMOmJOBgAXGr83tgoVn=6mkyZ1RQLRbf4dBPe0PG1VhyU+tzoQ@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E310 not locking on GPS
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
From: Dan CaJacob via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dan CaJacob <dan.cajacob@gmail.com>
Cc: USRP List <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1712244797538468349=="
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

--===============1712244797538468349==
Content-Type: multipart/alternative; boundary="00000000000076521e0587f01b59"

--00000000000076521e0587f01b59
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

GPS doesn't like to go back in time. You probably need to reset the almanac
and a reboot is doing that.

On Tue, Apr 30, 2019, 9:53 AM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I've seen this a few times, but I cannot seem to lock it down to any
> particular reason.  While sitting at my desk with a GPS simulator (so I
> have a known good signal), I will be doing testing and everything is fine
> (it seems to be walking around the place where the unit was built).  I wi=
ll
> turn off the GPS unit for the night and then the next day when I turn it
> on, I never get a fix.  I've seen this numerous times and the only way I
> can fix it is to reboot the E310.  It is like the GPS is getting into a
> mucked up stated.  Data comes streaming through, but it is just the last
> good signal.
>
> I can't figure out a way to reset the GPS without rebooting it, does
> anyone know of a way?  I tried killing and restarting the daemon, but tha=
t
> doesn't seem to do anything.  I really think it is the GPS module, but
> rebooting it everytime I want to run things "just in case."
>
> One other weird thing, when I run gpsmon in this screwed up state, it
> mostly looks OK, but it has weird characters displayed throughout the ASC=
II
> heading (for lack of a better term).
>
> This is a good setup on a different unit (so I don't expect to see a fix)=
:
> tcp://localhost:2947          u-blox>
> =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=90=E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
> or":11}
> =E2=94=82Ch PRN  Az  El S/N Flag U =E2=94=82=E2=94=82ECEF Pos: +6378137.0=
0m  +0.00m      +0.00m
> =E2=94=82
> er":"u-blox","subtype":"Unknown","activated":"2018-10-10T06:21:07.701Z","=
flags":1,"native":1,"bps":9600,"parity":"N","stopbits":1,"cycle":1.00,"minc=
ycle":0.25}]}
> =E2=94=82 0   1   0 165   0 0110   =E2=94=82=E2=94=82ECEF Vel:     +0.00m=
/s     +0.00m/s
> +0.00m/s =E2=94=82 false,"timing":false,"split24":false,"pps":true}
> =E2=94=82 1   2   0 165   0 0110   =E2=94=82=E2=94=82
>     =E2=94=82
> =E2=94=82 2   4   0 165   0 0110   =E2=94=82=E2=94=82LTP Pos:   0.0000000=
00=C2=B0   0.000000000=C2=B0
> -18.00m =E2=94=82
> =E2=94=82 3   6   0 165  23 0310   =E2=94=82=E2=94=82LTP Vel:    0.00m/s =
  0.0=C2=B0   0.00m/s
>     =E2=94=82
> =E2=94=82 4   7   0 165   0 0110   =E2=94=82=E2=94=82
>     =E2=94=82
> =E2=94=82 5   9   0 165  23 0310   =E2=94=82=E2=94=82Time: 0 00:00:00.00
>    =E2=94=82
> =E2=94=82 6  14   0 165  22 0310   =E2=94=82=E2=94=82Time GPS:           =
          Day:
>     =E2=94=82
> =E2=94=82 7  19   0 165  22 0310   =E2=94=82=E2=94=82
>     =E2=94=82
> =E2=94=82 8  20   0 165  21 0310   =E2=94=82=E2=94=82Est Pos Err9999998.7=
2st Vel Err   0.00m/s
>    =E2=94=82
> =E2=94=82 9  21   0 165   0 0110   =E2=94=82=E2=94=82PRNs:  0 PDOP:100.0 =
Fix 0x00 Flags 0x40
>    =E2=94=82
> =E2=94=8210  22   0 165   0 0110   =E2=94=82=E2=94=94=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80 NAV_SOL
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> =E2=94=8211  23   0 165   0 0110
> =E2=94=82=E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=90
> =E2=94=8212  24   0 165   0 0110   =E2=94=82=E2=94=82DOP [H] 100.0[V] 100=
.0[P] 100.0[T] 100.0[G]
> 100.0=E2=94=82
> =E2=94=8213  28   0 165  23 0310   =E2=94=82=E2=94=94=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80 NAV_DOP
> =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> =E2=94=8214  30   0 165   0 0110
> =E2=94=82=E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=90
> =E2=94=8215 136   0 165   0 0110   =E2=94=82=E2=94=82TOFF: > 1 day       =
     PPS:
>    =E2=94=82
>
> There are lines around the different sections (they look like lines, not
> dashes and bars).
>
>
> and then on the unit that is hosed:
> tcp://localhost:2947          u-blox>
> lqqqqqqqqqqqqqqqqqqqqqqqqqqklqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq=
qqqqqk
> or":11}
> xCh PRN  Az  El S/N Flag U xxECEF Pos: -2414806.17m +5389584.51m
> +2400650.28m x
> er":"u-blox","subtype":"Unknown","activated":"2019-01-08T14:52:40.454Z","=
flags":1,"native":1,"bps":9600,"parity":"N","stopbits":1,"cycle":1.00,"minc=
ycle":0.25}]}
> x 0   2   0 165  50 0700   xxECEF Vel:     +0.00m/s     +0.00m/s
> +0.00m/s x false,"timing":false,"split24":false,"pps":true}
> x 1   4   0 165  50 0700   xx
>     x
> x 2   5   0 165  50 0700   xxLTP Pos:  22.2557151134f 114.134790532f
>  20.19m x
> x 3   8   0 165   0 0100   xxLTP Vel:    0.00m/s   0.0f   0.00m/s
>     x
> x 4   9   0 165  50 0700   xx
>     x
> x 5  10   0 165  50 0700   xxTime: 61 06:13:40.00
>     x
> x 6  12   0 165  50 0700   xxTime GPS: 1877+529282.000     Day: 6
>     x
> x 7  13   0 165  50 0600   xx
>     x
> x 8  17   0 165  50 0700   xxEst Pos Err2238690.24st Vel Err   0.00m/s
>    x
> x 9  20   0 165  50 0700   xxPRNs:  0 PDOP:100.0 Fix 0x00 Flags 0xdc
>    x
> x10  23   0 165  50 0700   xmqqqqqqqqqqqqqqqqqqq NAV_SOL
> qqqqqqqqqqqqqqqqqqqqqj
> x11  24   0 165   0 0110
> xlqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqk
> x12  27   0 165  50 0700   xxDOP [H] 100.0[V] 100.0[P] 100.0[T] 100.0[G]
> 100.0x
> x13  28   0 165  50 0700   xmqqqqqqqqqqqqqqqqqqq NAV_DOP
> qqqqqqqqqqqqqqqqqqqqqj
> x14 129 127  51   0 0110
> xlqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqk
> x15                        xxTOFF: > 1 day            PPS:
>    x
> mqqqqqq NAV_SVINFO
> qqqqqqqqjmqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqj
>
> Not that instead of lines, I see characters.  What is up with that????
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000076521e0587f01b59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkdQUyBkb2VzbiYjMzk7dCBsaWtlIHRvIGdvIGJhY2sgaW4gdGltZS4g
WW91IHByb2JhYmx5IG5lZWQgdG8gcmVzZXQgdGhlIGFsbWFuYWMgYW5kIGEgcmVib290IGlzIGRv
aW5nIHRoYXQuPC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRy
IiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVHVlLCBBcHIgMzAsIDIwMTksIDk6NTMgQU0gSmFzb24g
TWF0dXNpYWsgdmlhIFVTUlAtdXNlcnMgJmx0OzxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbSI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyB3cm90ZTo8
YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjAg
MCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+DQoN
Cg0KDQoNCjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSxB
cmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtmb250LXNpemU6MTJwdDtjb2xvcjpyZ2IoMCwwLDAp
Ij4NCkkmIzM5O3ZlIHNlZW4gdGhpcyBhIGZldyB0aW1lcywgYnV0IEkgY2Fubm90IHNlZW0gdG8g
bG9jayBpdCBkb3duIHRvIGFueSBwYXJ0aWN1bGFyIHJlYXNvbi7CoCBXaGlsZSBzaXR0aW5nIGF0
IG15IGRlc2sgd2l0aCBhIEdQUyBzaW11bGF0b3IgKHNvIEkgaGF2ZSBhIGtub3duIGdvb2Qgc2ln
bmFsKSwgSSB3aWxsIGJlIGRvaW5nIHRlc3RpbmcgYW5kIGV2ZXJ5dGhpbmcgaXMgZmluZSAoaXQg
c2VlbXMgdG8gYmUgd2Fsa2luZyBhcm91bmQgdGhlIHBsYWNlIHdoZXJlDQogdGhlIHVuaXQgd2Fz
IGJ1aWx0KS7CoCBJIHdpbGwgdHVybiBvZmYgdGhlIEdQUyB1bml0IGZvciB0aGUgbmlnaHQgYW5k
IHRoZW4gdGhlIG5leHQgZGF5IHdoZW4gSSB0dXJuIGl0IG9uLCBJIG5ldmVyIGdldCBhIGZpeC7C
oCBJJiMzOTt2ZSBzZWVuIHRoaXMgbnVtZXJvdXMgdGltZXMgYW5kIHRoZSBvbmx5IHdheSBJIGNh
biBmaXggaXQgaXMgdG8gcmVib290IHRoZSBFMzEwLsKgIEl0IGlzIGxpa2UgdGhlIEdQUyBpcyBn
ZXR0aW5nIGludG8gYSBtdWNrZWQgdXANCiBzdGF0ZWQuwqAgRGF0YSBjb21lcyBzdHJlYW1pbmcg
dGhyb3VnaCwgYnV0IGl0IGlzIGp1c3QgdGhlIGxhc3QgZ29vZCBzaWduYWwuPC9kaXY+DQo8ZGl2
IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2Zv
bnQtc2l6ZToxMnB0O2NvbG9yOnJnYigwLDAsMCkiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxl
PSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2ZvbnQtc2l6
ZToxMnB0O2NvbG9yOnJnYigwLDAsMCkiPg0KSSBjYW4mIzM5O3QgZmlndXJlIG91dCBhIHdheSB0
byByZXNldCB0aGUgR1BTIHdpdGhvdXQgcmVib290aW5nIGl0LCBkb2VzIGFueW9uZSBrbm93IG9m
IGEgd2F5P8KgIEkgdHJpZWQga2lsbGluZyBhbmQgcmVzdGFydGluZyB0aGUgZGFlbW9uLCBidXQg
dGhhdCBkb2VzbiYjMzk7dCBzZWVtIHRvIGRvIGFueXRoaW5nLsKgIEkgcmVhbGx5IHRoaW5rIGl0
IGlzIHRoZSBHUFMgbW9kdWxlLCBidXQgcmVib290aW5nIGl0IGV2ZXJ5dGltZSBJIHdhbnQgdG8g
cnVuIHRoaW5ncw0KICZxdW90O2p1c3QgaW4gY2FzZS4mcXVvdDs8L2Rpdj4NCjxkaXYgc3R5bGU9
ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7Zm9udC1zaXpl
OjEycHQ7Y29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQt
ZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7Zm9udC1zaXplOjEycHQ7
Y29sb3I6cmdiKDAsMCwwKSI+DQpPbmUgb3RoZXIgd2VpcmQgdGhpbmcsIHdoZW4gSSBydW4gZ3Bz
bW9uIGluIHRoaXMgc2NyZXdlZCB1cCBzdGF0ZSwgaXQgbW9zdGx5IGxvb2tzIE9LLCBidXQgaXQg
aGFzIHdlaXJkIGNoYXJhY3RlcnMgZGlzcGxheWVkIHRocm91Z2hvdXQgdGhlIEFTQ0lJIGhlYWRp
bmcgKGZvciBsYWNrIG9mIGEgYmV0dGVyIHRlcm0pLjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1m
YW1pbHk6Q2FsaWJyaSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtmb250LXNpemU6MTJwdDtj
b2xvcjpyZ2IoMCwwLDApIj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6
Q2FsaWJyaSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtmb250LXNpemU6MTJwdDtjb2xvcjpy
Z2IoMCwwLDApIj4NClRoaXMgaXMgYSBnb29kIHNldHVwIG9uIGEgZGlmZmVyZW50IHVuaXQgKHNv
IEkgZG9uJiMzOTt0IGV4cGVjdCB0byBzZWUgYSBmaXgpOjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9u
dC1mYW1pbHk6Q2FsaWJyaSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjtmb250LXNpemU6MTJw
dDtjb2xvcjpyZ2IoMCwwLDApIj4NCjxzcGFuPnRjcDovL2xvY2FsaG9zdDoyOTQ3IMKgIMKgIMKg
IMKgIMKgdS1ibG94Jmd0Ozxicj4NCjwvc3Bhbj4NCjxkaXY+4pSM4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSQ4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQIG9yJnF1b3Q7OjEx
fTxicj4NCjwvZGl2Pg0KPGRpdj7ilIJDaCBQUk4gwqBBeiDCoEVsIFMvTiBGbGFnIFUg4pSC4pSC
RUNFRiBQb3M6ICs2Mzc4MTM3LjAwbSDCoCswLjAwbSDCoCDCoCDCoCswLjAwbSDCoCDilIIgZXIm
cXVvdDs6JnF1b3Q7dS1ibG94JnF1b3Q7LCZxdW90O3N1YnR5cGUmcXVvdDs6JnF1b3Q7VW5rbm93
biZxdW90OywmcXVvdDthY3RpdmF0ZWQmcXVvdDs6JnF1b3Q7MjAxOC0xMC0xMFQwNjoyMTowNy43
MDFaJnF1b3Q7LCZxdW90O2ZsYWdzJnF1b3Q7OjEsJnF1b3Q7bmF0aXZlJnF1b3Q7OjEsJnF1b3Q7
YnBzJnF1b3Q7Ojk2MDAsJnF1b3Q7cGFyaXR5JnF1b3Q7OiZxdW90O04mcXVvdDssJnF1b3Q7c3Rv
cGJpdHMmcXVvdDs6MSwmcXVvdDtjeWNsZSZxdW90OzoxLjAwLCZxdW90O21pbmN5Y2xlJnF1b3Q7
OjAuMjV9XX08YnI+DQo8L2Rpdj4NCjxkaXY+4pSCIDAgwqAgMSDCoCAwIDE2NSDCoCAwIDAxMTAg
wqAg4pSC4pSCRUNFRiBWZWw6IMKgIMKgICswLjAwbS9zIMKgIMKgICswLjAwbS9zIMKgIMKgICsw
LjAwbS9zIOKUgiBmYWxzZSwmcXVvdDt0aW1pbmcmcXVvdDs6ZmFsc2UsJnF1b3Q7c3BsaXQyNCZx
dW90OzpmYWxzZSwmcXVvdDtwcHMmcXVvdDs6dHJ1ZX08YnI+DQo8L2Rpdj4NCjxkaXY+4pSCIDEg
wqAgMiDCoCAwIDE2NSDCoCAwIDAxMTAgwqAg4pSC4pSCIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIOKUgjxicj4N
CjwvZGl2Pg0KPGRpdj7ilIIgMiDCoCA0IMKgIDAgMTY1IMKgIDAgMDExMCDCoCDilILilIJMVFAg
UG9zOiDCoCAwLjAwMDAwMDAwMMKwIMKgIDAuMDAwMDAwMDAwwrAgwqAgLTE4LjAwbSDilII8YnI+
DQo8L2Rpdj4NCjxkaXY+4pSCIDMgwqAgNiDCoCAwIDE2NSDCoDIzIDAzMTAgwqAg4pSC4pSCTFRQ
IFZlbDogwqAgwqAwLjAwbS9zIMKgIDAuMMKwIMKgIDAuMDBtL3MgwqAgwqAgwqAgwqAgwqAgwqAg
4pSCPGJyPg0KPC9kaXY+DQo8ZGl2PuKUgiA0IMKgIDcgwqAgMCAxNjUgwqAgMCAwMTEwIMKgIOKU
guKUgiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDilII8YnI+DQo8L2Rpdj4NCjxkaXY+4pSCIDUgwqAgOSDCoCAw
IDE2NSDCoDIzIDAzMTAgwqAg4pSC4pSCVGltZTogMCAwMDowMDowMC4wMCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoOKUgjxicj4NCjwvZGl2Pg0KPGRpdj7ilIIg
NiDCoDE0IMKgIDAgMTY1IMKgMjIgMDMxMCDCoCDilILilIJUaW1lIEdQUzogwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgRGF5OiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDilII8YnI+DQo8L2Rp
dj4NCjxkaXY+4pSCIDcgwqAxOSDCoCAwIDE2NSDCoDIyIDAzMTAgwqAg4pSC4pSCIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIOKUgjxicj4NCjwvZGl2Pg0KPGRpdj7ilIIgOCDCoDIwIMKgIDAgMTY1IMKgMjEgMDMx
MCDCoCDilILilIJFc3QgUG9zIEVycjk5OTk5OTguNzJzdCBWZWwgRXJyIMKgIDAuMDBtL3MgwqAg
wqAgwqAgwqDilII8YnI+DQo8L2Rpdj4NCjxkaXY+4pSCIDkgwqAyMSDCoCAwIDE2NSDCoCAwIDAx
MTAgwqAg4pSC4pSCUFJOczogwqAwIFBET1A6MTAwLjAgRml4IDB4MDAgRmxhZ3MgMHg0MCDCoCDC
oCDCoCDCoCDCoOKUgjxicj4NCjwvZGl2Pg0KPGRpdj7ilIIxMCDCoDIyIMKgIDAgMTY1IMKgIDAg
MDExMCDCoCDilILilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIAgTkFWX1NPTCDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJg8YnI+DQo8L2Rpdj4NCjxkaXY+4pSCMTEg
wqAyMyDCoCAwIDE2NSDCoCAwIDAxMTAgwqAg4pSC4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSQPGJyPg0KPC9kaXY+DQo8ZGl2PuKUgjEyIMKgMjQgwqAgMCAxNjUgwqAgMCAw
MTEwIMKgIOKUguKUgkRPUCBbSF0gMTAwLjBbVl0gMTAwLjBbUF0gMTAwLjBbVF0gMTAwLjBbR10g
MTAwLjDilII8YnI+DQo8L2Rpdj4NCjxkaXY+4pSCMTMgwqAyOCDCoCAwIDE2NSDCoDIzIDAzMTAg
wqAg4pSC4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSAIE5BVl9ET1Ag4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSYPGJyPg0KPC9kaXY+DQo8ZGl2PuKUgjE0IMKgMzAg
wqAgMCAxNjUgwqAgMCAwMTEwIMKgIOKUguKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUkDxicj4NCjwvZGl2Pg0KPGRpdj7ilIIxNSAxMzYgwqAgMCAxNjUgwqAgMCAwMTEwIMKg
IOKUguKUglRPRkY6ICZndDsgMSBkYXkgwqAgwqAgwqAgwqAgwqAgwqBQUFM6IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKg4pSCPGJyPg0KPC9kaXY+DQo8c3Bhbj48L3NwYW4+PGJyPg0KPC9k
aXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5z
LXNlcmlmO2ZvbnQtc2l6ZToxMnB0O2NvbG9yOnJnYigwLDAsMCkiPg0KVGhlcmUgYXJlIGxpbmVz
IGFyb3VuZCB0aGUgZGlmZmVyZW50IHNlY3Rpb25zICh0aGV5IGxvb2sgbGlrZSBsaW5lcywgbm90
IGRhc2hlcyBhbmQgYmFycykuPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJp
LEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmO2ZvbnQtc2l6ZToxMnB0O2NvbG9yOnJnYigwLDAs
MCkiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFs
LEhlbHZldGljYSxzYW5zLXNlcmlmO2ZvbnQtc2l6ZToxMnB0O2NvbG9yOnJnYigwLDAsMCkiPg0K
PGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZl
dGljYSxzYW5zLXNlcmlmO2ZvbnQtc2l6ZToxMnB0O2NvbG9yOnJnYigwLDAsMCkiPg0KYW5kIHRo
ZW4gb24gdGhlIHVuaXQgdGhhdCBpcyBob3NlZDo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFt
aWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7Zm9udC1zaXplOjEycHQ7Y29s
b3I6cmdiKDAsMCwwKSI+DQo8c3Bhbj50Y3A6Ly9sb2NhbGhvc3Q6Mjk0NyDCoCDCoCDCoCDCoCDC
oHUtYmxveCZndDs8YnI+DQo8L3NwYW4+DQo8ZGl2PmxxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFx
cWtscXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcWsgb3Im
cXVvdDs6MTF9PGJyPg0KPC9kaXY+DQo8ZGl2PnhDaCBQUk4gwqBBeiDCoEVsIFMvTiBGbGFnIFUg
eHhFQ0VGIFBvczogLTI0MTQ4MDYuMTdtICs1Mzg5NTg0LjUxbSArMjQwMDY1MC4yOG0geCBlciZx
dW90OzomcXVvdDt1LWJsb3gmcXVvdDssJnF1b3Q7c3VidHlwZSZxdW90OzomcXVvdDtVbmtub3du
JnF1b3Q7LCZxdW90O2FjdGl2YXRlZCZxdW90OzomcXVvdDsyMDE5LTAxLTA4VDE0OjUyOjQwLjQ1
NFomcXVvdDssJnF1b3Q7ZmxhZ3MmcXVvdDs6MSwmcXVvdDtuYXRpdmUmcXVvdDs6MSwmcXVvdDti
cHMmcXVvdDs6OTYwMCwmcXVvdDtwYXJpdHkmcXVvdDs6JnF1b3Q7TiZxdW90OywmcXVvdDtzdG9w
Yml0cyZxdW90OzoxLCZxdW90O2N5Y2xlJnF1b3Q7OjEuMDAsJnF1b3Q7bWluY3ljbGUmcXVvdDs6
MC4yNX1dfTxicj4NCjwvZGl2Pg0KPGRpdj54IDAgwqAgMiDCoCAwIDE2NSDCoDUwIDA3MDAgwqAg
eHhFQ0VGIFZlbDogwqAgwqAgKzAuMDBtL3MgwqAgwqAgKzAuMDBtL3MgwqAgwqAgKzAuMDBtL3Mg
eCBmYWxzZSwmcXVvdDt0aW1pbmcmcXVvdDs6ZmFsc2UsJnF1b3Q7c3BsaXQyNCZxdW90OzpmYWxz
ZSwmcXVvdDtwcHMmcXVvdDs6dHJ1ZX08YnI+DQo8L2Rpdj4NCjxkaXY+eCAxIMKgIDQgwqAgMCAx
NjUgwqA1MCAwNzAwIMKgIHh4IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHg8YnI+DQo8L2Rpdj4NCjxkaXY+eCAy
IMKgIDUgwqAgMCAxNjUgwqA1MCAwNzAwIMKgIHh4TFRQIFBvczrCoCAyMi4yNTU3MTUxMTM0ZiAx
MTQuMTM0NzkwNTMyZiDCoCDCoDIwLjE5bSB4PGJyPg0KPC9kaXY+DQo8ZGl2PnggMyDCoCA4IMKg
IDAgMTY1IMKgIDAgMDEwMCDCoCB4eExUUCBWZWw6IMKgIMKgMC4wMG0vcyDCoCAwLjBmIMKgIDAu
MDBtL3MgwqAgwqAgwqAgwqAgwqAgwqAgeDxicj4NCjwvZGl2Pg0KPGRpdj54IDQgwqAgOSDCoCAw
IDE2NSDCoDUwIDA3MDAgwqAgeHggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgeDxicj4NCjwvZGl2Pg0KPGRpdj54
IDUgwqAxMCDCoCAwIDE2NSDCoDUwIDA3MDAgwqAgeHhUaW1lOiA2MSAwNjoxMzo0MC4wMCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB4PGJyPg0KPC9kaXY+DQo8ZGl2
PnggNiDCoDEyIMKgIDAgMTY1IMKgNTAgMDcwMCDCoCB4eFRpbWUgR1BTOiAxODc3KzUyOTI4Mi4w
MDAgwqAgwqAgRGF5OiA2IMKgIMKgIMKgIMKgIMKgIMKgIHg8YnI+DQo8L2Rpdj4NCjxkaXY+eCA3
IMKgMTMgwqAgMCAxNjUgwqA1MCAwNjAwIMKgIHh4IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHg8YnI+DQo8L2Rp
dj4NCjxkaXY+eCA4IMKgMTcgwqAgMCAxNjUgwqA1MCAwNzAwIMKgIHh4RXN0IFBvcyBFcnIyMjM4
NjkwLjI0c3QgVmVsIEVyciDCoCAwLjAwbS9zIMKgIMKgIMKgIMKgeDxicj4NCjwvZGl2Pg0KPGRp
dj54IDkgwqAyMCDCoCAwIDE2NSDCoDUwIDA3MDAgwqAgeHhQUk5zOiDCoDAgUERPUDoxMDAuMCBG
aXggMHgwMCBGbGFncyAweGRjIMKgIMKgIMKgIMKgIMKgeDxicj4NCjwvZGl2Pg0KPGRpdj54MTAg
wqAyMyDCoCAwIDE2NSDCoDUwIDA3MDAgwqAgeG1xcXFxcXFxcXFxcXFxcXFxcXFxIE5BVl9TT0wg
cXFxcXFxcXFxcXFxcXFxcXFxcXFxajxicj4NCjwvZGl2Pg0KPGRpdj54MTEgwqAyNCDCoCAwIDE2
NSDCoCAwIDAxMTAgwqAgeGxxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFx
cXFxcXFxcXFxazxicj4NCjwvZGl2Pg0KPGRpdj54MTIgwqAyNyDCoCAwIDE2NSDCoDUwIDA3MDAg
wqAgeHhET1AgW0hdIDEwMC4wW1ZdIDEwMC4wW1BdIDEwMC4wW1RdIDEwMC4wW0ddIDEwMC4weDxi
cj4NCjwvZGl2Pg0KPGRpdj54MTMgwqAyOCDCoCAwIDE2NSDCoDUwIDA3MDAgwqAgeG1xcXFxcXFx
cXFxcXFxcXFxcXFxIE5BVl9ET1AgcXFxcXFxcXFxcXFxcXFxcXFxcXFxajxicj4NCjwvZGl2Pg0K
PGRpdj54MTQgMTI5IDEyNyDCoDUxIMKgIDAgMDExMCDCoCB4bHFxcXFxcXFxcXFxcXFxcXFxcXFx
cXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFrPGJyPg0KPC9kaXY+DQo8ZGl2PngxNSDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHh4VE9GRjogJmd0OyAxIGRheSDCoCDCoCDC
oCDCoCDCoCDCoFBQUzogwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB4PGJyPg0KPC9kaXY+
DQo8ZGl2Pm1xcXFxcXEgTkFWX1NWSU5GTyBxcXFxcXFxcWptcXFxcXFxcXFxcXFxcXFxcXFxcXFx
cXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcXFxcWo8YnI+DQo8L2Rpdj4NCjxzcGFuPjwvc3Bhbj48
YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0
aWNhLHNhbnMtc2VyaWY7Zm9udC1zaXplOjEycHQ7Y29sb3I6cmdiKDAsMCwwKSI+DQpOb3QgdGhh
dCBpbnN0ZWFkIG9mIGxpbmVzLCBJIHNlZSBjaGFyYWN0ZXJzLsKgIFdoYXQgaXMgdXAgd2l0aCB0
aGF0Pz8/PzwvZGl2Pg0KPC9kaXY+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fPGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Q8YnI+DQo8YSBocmVm
PSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIiByZWw9
Im5vcmVmZXJyZXIiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCjxhIGhyZWY9
Imh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbSIgcmVsPSJub3JlZmVycmVyIG5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5o
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--00000000000076521e0587f01b59--


--===============1712244797538468349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1712244797538468349==--

