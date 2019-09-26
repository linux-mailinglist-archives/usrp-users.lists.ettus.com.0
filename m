Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35665BF40A
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 15:27:14 +0200 (CEST)
Received: from [::1] (port=40884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDTnc-00024H-Ra; Thu, 26 Sep 2019 09:27:12 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:38861)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1iDTnZ-0001xO-FC
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 09:27:09 -0400
Received: by mail-oi1-f170.google.com with SMTP id m16so2066316oic.5
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 06:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ec6OPFCxnMfNl2GsUqK06vFUmg4vf6OPGMYe14x/ark=;
 b=Hn0AJYWu/jHhJUbEurl9UPmOZvHJL+Zb9Ol8XX8QLEdHZHEfTFUxJLUrEv7rAztxWw
 FQFtAZq5yKS1WEdfXY8F2eJTz0BXPl1gosI2UQ6UWfl4dnaMuE2UkFtxm7NVrW9mAF27
 nhCHkWusV+4DkXG3rkMCmvRkslJuY5f5bXyjdKfSwY+IOf47Z8F4mtocFjkv1WSrPYjc
 4tSFjlOUWuj4sSh+DuOwNZWDy8wnknOykv81EwKIbVtqkjxKks6UsGvLNT/QHRJ1/DH2
 3OHI26+na1KJB6SFruGhvVbRczpKshb60xamFqdCucVtDe+J4F6ryLaml0b3mV/ahWhO
 iPyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ec6OPFCxnMfNl2GsUqK06vFUmg4vf6OPGMYe14x/ark=;
 b=Z7kURD3jAxA92O9kkdEqt/oq+VuRioWJMBXgUHnnO+TyDePa5DE4Lj0mdVbIexMT5q
 4LYL7u9oNlpMVoIesJZ68cX6uAvfog1pJtm/xa6XcFASYQ7+GjuAXz2nVAXIG3W2OYGg
 /YDVsNwBxEShwTIkFImZzSP3C8PIUo2XY5hphzkOa428vtu8Nzckr3xYWKVO5edgKpjG
 xy/PKkphtxnued9lKj/u/rTqLedX/wJKOGjQp/UQsYD8+FEOMk7fgZ3anYmyBtC+s3+g
 rMpjK5NXyT7Hu4leDOCAufKvBlQa32wJybAEuMZDcHW3j5XMNRzazzydQrI0NE15G6k6
 Sofg==
X-Gm-Message-State: APjAAAUSWHGHHO0m2UMYMbPPMNpn+kghIAr/V8Z8z+P6rGL+9XEnAhVV
 r4fdkbxGw3e9wHoq+Y5YcjY45/yBFnGYDUmDtSlco+H0
X-Google-Smtp-Source: APXvYqzPoAhCx/reI8RV/cyBqjODYmLpnLIfcJgpEsPpCl8Jik1TLib50i+wxujryDY2XDTnC+Z7rccdrDUweNU9KPc=
X-Received: by 2002:aca:cc07:: with SMTP id c7mr2773378oig.19.1569504388538;
 Thu, 26 Sep 2019 06:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
 <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
 <CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
 <d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-labs.com>
 <39850419-2871-9e95-c355-677aa4543b60@3db-labs.com>
In-Reply-To: <39850419-2871-9e95-c355-677aa4543b60@3db-labs.com>
Date: Thu, 26 Sep 2019 08:26:12 -0500
Message-ID: <CACaXmv_Ar3Lq02UvuMhTv1Pi8Fv2TGkX5n642YxTW5E6W5NNVQ@mail.gmail.com>
To: Jason Roehm <jasonr@3db-labs.com>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4867463749452969841=="
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

--===============4867463749452969841==
Content-Type: multipart/alternative; boundary="0000000000008d7d1c059374b761"

--0000000000008d7d1c059374b761
Content-Type: text/plain; charset="UTF-8"

Hello Jason:

My apologies for the delay. We were super busy with GNU Radio Conference.
Thanks for providing a stand-alone test program. I'll try to reproduce this
issue later today or tomorrow, and I'll get back to you with an update.

--Neel Pandeya



On Tue, 3 Sep 2019 at 10:20, Jason Roehm <jasonr@3db-labs.com> wrote:

>
> On 8/20/19 7:40 AM, Jason Roehm via USRP-users wrote:
>
>
> On 8/19/19 6:52 PM, Neel Pandeya wrote:
>
> Hello Jason:
>
> Thanks for all the detailed feedback!  No worries about not having a
> stand-alone reproducing program at the moment.  Could you please try using
> the head of the "UHD-3.14" branch?  We just tagged v3.14.1.1-rc1 with some
> bug fixes, which we think should address the issue.  Please let me know
> your results running with that, and we'll go from there.
>
> --Neel Pandeya
>
> Neel,
>
> I saw the same behavior with the UHD-3.14 branch. I was able to take the
> time to put together a self-contained reproducer; see the attached source
> file. It's just a simple C++ program that initializes the USRP, streams a
> few blocks of data in, and checks the timestamps of consecutive blocks for
> continuity. When I run it, I see the following output:
>
> [jasonr@host:~/test_uhd]$ LD_LIBRARY_PATH=~/git/sceptre/deps/lib
> ./test_uhd
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106900;
> UHD_3.14.1.HEAD-0-g98c7c986
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1303 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.
> Block 1: 16384 samples @ 100 MSPS
>     Timestamp:           1.96557
> Block 2: 16384 samples @ 100 MSPS
>     Timestamp:           1.9659
>     Last timestamp:      1.96557
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 3: 16384 samples @ 100 MSPS
>     Timestamp:           1.96622
>     Last timestamp:      1.9659
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 4: 16384 samples @ 100 MSPS
>     Timestamp:           1.96654
>     Last timestamp:      1.96622
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 5: 16384 samples @ 100 MSPS
>     Timestamp:           1.96687
>     Last timestamp:      1.96654
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 6: 16384 samples @ 100 MSPS
>     Timestamp:           1.96721
>     Last timestamp:      1.96687
>     Difference:          0.00034348
>     Expected difference: 0.00016384
> Block 7: 16384 samples @ 100 MSPS
>     Timestamp:           1.96753
>     Last timestamp:      1.96721
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 8: 16384 samples @ 100 MSPS
>     Timestamp:           1.96786
>     Last timestamp:      1.96753
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 9: 16384 samples @ 100 MSPS
>     Timestamp:           1.96818
>     Last timestamp:      1.96786
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> Block 10: 16384 samples @ 100 MSPS
>     Timestamp:           1.96851
>     Last timestamp:      1.96818
>     Difference:          0.00032352
>     Expected difference: 0.00016384
> [jasonr@gauss:~/git/sceptre/test/test_uhd]$
>
> Thanks for your help.
>
> Jason
>
> Neel,
>
> Have you been able to take a look at this further?
>
> Jason
>

--0000000000008d7d1c059374b761
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello Jason:</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">My apologies for the delay. =
We were super busy with GNU Radio Conference. Thanks for providing a stand-=
alone test program. I&#39;ll try to reproduce this issue later today or tom=
orrow, and I&#39;ll get back to you with an update.<br></div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:verdana,sans-serif">--Neel Pandeya=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 3 Sep 2019 at 10:20, Jason Roehm &lt;<a href=3D"mai=
lto:jasonr@3db-labs.com">jasonr@3db-labs.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div>On 8/20/19 7:40 AM, Jason Roehm via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p><br>
      </p>
      <div>On 8/19/19 6:52 PM, Neel Pandeya
        wrote:<br>
      </div>
      <blockquote type=3D"cite">
       =20
        <div dir=3D"ltr">
          <div style=3D"font-family:verdana,sans-serif">Hello Jason:</div>
          <div style=3D"font-family:verdana,sans-serif"><br>
          </div>
          <div style=3D"font-family:verdana,sans-serif">Thanks for all the
            detailed feedback!=C2=A0 No worries about not having a
            stand-alone reproducing program at the moment.=C2=A0 Could you
            please try using the head of the &quot;UHD-3.14&quot; branch?=
=C2=A0 We just
            tagged v3.14.1.1-rc1 with some bug fixes, which we think
            should address the issue.=C2=A0 Please let me know your results
            running with that, and we&#39;ll go from there.</div>
          <div style=3D"font-family:verdana,sans-serif"><br>
          </div>
          <div style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div=
>
          <div style=3D"font-family:verdana,sans-serif"><br>
          </div>
        </div>
      </blockquote>
      <p>Neel,</p>
      <p>I saw the same behavior with the UHD-3.14 branch. I was able to
        take the time to put together a self-contained reproducer; see
        the attached source file. It&#39;s just a simple C++ program that
        initializes the USRP, streams a few blocks of data in, and
        checks the timestamps of consecutive blocks for continuity. When
        I run it, I see the following output:</p>
      <p><tt>[jasonr@host:~/test_uhd]$
          LD_LIBRARY_PATH=3D~/git/sceptre/deps/lib ./test_uhd </tt><tt><br>
        </tt><tt>[INFO] [UHD] linux; GNU C++ version 7.4.0;
          Boost_106900; UHD_3.14.1.HEAD-0-g98c7c986</tt><tt><br>
        </tt><tt>[INFO] [X300] X300 initialization sequence...</tt><tt><br>
        </tt><tt>[INFO] [X300] Maximum frame size: 8000 bytes.</tt><tt><br>
        </tt><tt>[INFO] [X300] Radio 1x clock: 200 MHz</tt><tt><br>
        </tt><tt>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware
          Rev 0.929a</tt><tt><br>
        </tt><tt>[INFO] [0/DmaFIFO_0] Initializing block control (NOC
          ID: 0xF1F0D00000000000)</tt><tt><br>
        </tt><tt>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1303
          MB/s)</tt><tt><br>
        </tt><tt>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312
          MB/s)</tt><tt><br>
        </tt><tt>[INFO] [0/Radio_0] Initializing block control (NOC ID:
          0x12AD100000000001)</tt><tt><br>
        </tt><tt>[INFO] [0/Radio_1] Initializing block control (NOC ID:
          0x12AD100000000001)</tt><tt><br>
        </tt><tt>[INFO] [0/DDC_0] Initializing block control (NOC ID:
          0xDDC0000000000000)</tt><tt><br>
        </tt><tt>[INFO] [0/DDC_1] Initializing block control (NOC ID:
          0xDDC0000000000000)</tt><tt><br>
        </tt><tt>[INFO] [0/DUC_0] Initializing block control (NOC ID:
          0xD0C0000000000000)</tt><tt><br>
        </tt><tt>[INFO] [0/DUC_1] Initializing block control (NOC ID:
          0xD0C0000000000000)</tt><tt><br>
        </tt><tt>[WARNING] [X300] Cannot update master clock rate! X300
          Series does not allow changing the clock rate during runtime.</tt=
><tt><br>
        </tt><tt>Block 1: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96557</tt><tt><br>
        </tt><tt>Block 2: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.9659</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96557</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 3: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96622</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.9659</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 4: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96654</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96622</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 5: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96687</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96654</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 6: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96721</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96687</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00034348</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 7: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96753</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96721</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 8: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96786</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96753</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 9: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96818</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96786</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>Block 10: 16384 samples @ 100 MSPS</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.96851</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Last timestamp:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1.96818</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Difference:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0.00032352</tt><tt><br>
        </tt><tt>=C2=A0=C2=A0=C2=A0 Expected difference: 0.00016384</tt><tt=
><br>
        </tt><tt>[jasonr@gauss:~/git/sceptre/test/test_uhd]$</tt><tt><br>
        </tt></p>
      <p>Thanks for your help.</p>
      <p>Jason<br>
      </p>
    </blockquote>
    <p>Neel,</p>
    <p>Have you been able to take a look at this further?</p>
    <p>Jason</p>
  </div>

</blockquote></div></div>

--0000000000008d7d1c059374b761--


--===============4867463749452969841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4867463749452969841==--

