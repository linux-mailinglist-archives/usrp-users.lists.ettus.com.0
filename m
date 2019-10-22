Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D82DFE0680
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 16:33:52 +0200 (CEST)
Received: from [::1] (port=34414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMvEJ-0003PG-JY; Tue, 22 Oct 2019 10:33:47 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:43296)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <carlos.bocanegra.guerra@gmail.com>)
 id 1iMvEF-0003Kg-Oz
 for usrp-users@lists.ettus.com; Tue, 22 Oct 2019 10:33:43 -0400
Received: by mail-qt1-f177.google.com with SMTP id t20so27048058qtr.10
 for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2019 07:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xfA5VgrwMwFnM++hRU+OLG9BWxLxLFlqYiCF4JSdmpQ=;
 b=eP31Tf3Rq2KOg/uUZfGwfXgp+FtokREaZyZITkBlk/yXh+DiRp2PWtom3WPYZ/K2bJ
 Uhu3AkMCEmxNGakRi2RO5eND8ojt7IIFhMmtjkgbQIduWMoGygD1MVuGX5U2qkhag06J
 LXDGwRklcM3pX7M/VCsictBX0Mr/L9ANlehWQHppU8e8j/xezMrEo5PI5Ck3szBpDSXr
 /SQI7HUgJXSNWR/hSFQ4KItjAmk6vPGt8JPYY+jrJ2JrS0XyOtcXC60sFv79sTLAJezd
 Zm0vZpWQ6oQWxT46bkHMVulZ89e3OPwPSriweXbUjRGxlg90UfreA0NEwn7ZXq5LgayZ
 y1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xfA5VgrwMwFnM++hRU+OLG9BWxLxLFlqYiCF4JSdmpQ=;
 b=rjNiO8Rzo3UN44kivwPeZeO4H0N5w1dVvj26TwiP+vM9n60LJovAd0fTlKNBt258c2
 NsNGNbT6rq2d7XX3659ikmRKPxkbgjsGAgTeJIYWWPHsnhKJojfqtuneBq9xKr9qf0HO
 xPWl0BQhb7B3BBdwch/eiwziSDztRqNW8GCGBHHloy5naU/gA10InTaJB+Zmzit3m92O
 3sxYo6VXwcwZqJQEjjGgiwfrA9nCQXACf65puDHfJTOhb9s4XyEj+6p7806bbRhQ6f6p
 s6WSPwGxLQeVZZQRxOPODu5qqI1kqIoj/u9D+zg2eFhF5oC6ZOiqN3/imAIYBD1t+yze
 BVeQ==
X-Gm-Message-State: APjAAAWyLnYjbMOKaFILXJFEntOMYmtxxK8YoIx5P1X/aENrgibwpNHt
 /WL1F/y9xu2WtO5aE1dq9YV9stEfX/l68MeaOSSeWXzS
X-Google-Smtp-Source: APXvYqyp2IIVjT8Rxy9qaKq84yTPevT2sNtFtW/VZK/4DdIyuOwkpsU9mU1u5I54CmPBS5kc8yk35nzdCJieB+oDl5g=
X-Received: by 2002:a05:6214:11f2:: with SMTP id
 e18mr962632qvu.86.1571754782528; 
 Tue, 22 Oct 2019 07:33:02 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 10:32:51 -0400
Message-ID: <CAEJWbW022J-UCzT+hs-dTbUGSXTSzQDMkC27tHwsk5rL1BnsUg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] TwinRX and UBX under same multiUSRP object on X310s
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
From: Carlos Bocanegra via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>
Content-Type: multipart/mixed; boundary="===============8196222603524699243=="
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

--===============8196222603524699243==
Content-Type: multipart/alternative; boundary="0000000000007c99e9059580ad19"

--0000000000007c99e9059580ad19
Content-Type: text/plain; charset="UTF-8"

Hi all,

Can we have daughterboards TwinRX and UBX working under the same multiUSRP
object? For instance, two TwinRX attached to one USRP and two UBX attached
to another USRP creating 6 synchronized and phased aligned receiver
channels?

The discussion below stated that the sampling rate mismatch (100Msps for
the TwinRX and 200Msps for the UBX) do not allow for simultaneous operation
under the same USRP. But what about different USRPs?
https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/msg00021.html

If I try running the benchmark_rate having two TwinRX on the address 70.2
and two UBX on the 60.2 like:
*>> sudo /usr/local/lib/uhd/examples/benchmark_rate --args
"addr0=192.168.70.2,addr1=192.168.60.2" --rx_channels 0,1,2,3 --rx_subdev
"A:0 B:0" --rx_rate 1e6 --ref external --pps external*
I get the error:
*RuntimeError: Conflicting tick rates: One neighbouring block specifies
2e+08 MHz, another 1e+08 MHz.*

I also tried changing the master clock rate to see if we can match them,
but then I get that the X310 can't change their master clock rate at
runtime, even when I set these parameters as "stream_args" when I create
the usrp_source object.

Thanks,
Carlos

--0000000000007c99e9059580ad19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Can we have daughter=
boards TwinRX and UBX working under the same multiUSRP object? For instance=
, two TwinRX attached to one USRP and two UBX attached to another USRP crea=
ting 6 synchronized and phased aligned receiver channels?<br></div><div><br=
></div><div>The discussion below stated that the sampling rate mismatch (10=
0Msps for the TwinRX and 200Msps for the UBX) do not allow for simultaneous=
 operation under the same USRP. But what about different USRPs?<br></div><d=
iv><a href=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/m=
sg00021.html">https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/m=
sg00021.html</a></div><div><br></div><div>If I try running the benchmark_ra=
te having two TwinRX on the address 70.2 and two UBX on the 60.2 like:<br><=
/div><div><i>&gt;&gt; sudo /usr/local/lib/uhd/examples/benchmark_rate --arg=
s &quot;addr0=3D192.168.70.2,addr1=3D192.168.60.2&quot; --rx_channels 0,1,2=
,3 --rx_subdev &quot;A:0 B:0&quot; --rx_rate 1e6 --ref external --pps exter=
nal</i></div><div>I get the error:<i><br></i></div><div><i>RuntimeError: Co=
nflicting tick rates: One neighbouring block specifies 2e+08 MHz, another 1=
e+08 MHz.</i></div><div><i><br></i></div><div>I also tried changing the mas=
ter clock rate to see if we can match them, but then I get that the X310 ca=
n&#39;t change their master clock rate at runtime, even when I set these pa=
rameters as &quot;stream_args&quot; when I create the usrp_source object.</=
div><div><br></div><div>Thanks,</div><div>Carlos<br></div><div><i></i></div=
><div><br></div></div>

--0000000000007c99e9059580ad19--


--===============8196222603524699243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8196222603524699243==--

