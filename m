Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 453EE18B03
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 15:54:50 +0200 (CEST)
Received: from [::1] (port=45400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOjVW-0007oM-AC; Thu, 09 May 2019 09:54:46 -0400
Received: from atl4mhob20.registeredsite.com ([209.17.115.114]:38972)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <k5so@k5so.com>) id 1hOjUx-0007ed-Up
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 09:54:42 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob20.registeredsite.com (8.14.4/8.14.4) with ESMTP id x49DrTBC040411
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Thu, 9 May 2019 09:53:29 -0400
Received: (qmail 31508 invoked by uid 0); 9 May 2019 13:53:29 -0000
X-TCPREMOTEIP: 192.206.203.10
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.76?) (k5so@k5so.com@192.206.203.10)
 by 0 with ESMTPA; 9 May 2019 13:53:29 -0000
Message-Id: <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Thu, 9 May 2019 07:53:27 -0600
In-Reply-To: <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
To: Joe Martin <k5so@k5so.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
 <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
 <19BFE8B3-662A-4DC0-BB72-557E7495F6D0@k5so.com>
 <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com> <5CD36887.5050805@gmail.com>
 <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Need a little help with running legacy prebuilt UHD
 versions
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
From: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Martin <k5so@k5so.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0333739822440583710=="
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


--===============0333739822440583710==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E8180DC7-27FE-471A-8CE7-588CB0289484"


--Apple-Mail=_E8180DC7-27FE-471A-8CE7-588CB0289484
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I need a bit of help to understand how to run legacy prebuilt UHD =
versions from the files.ettus.com/binaries/uhd =
<http://files.ettus.com/binaries/uhd> repository. =20

I would like to try various UHD versions to try to find a version that =
will run with an elderly (Rev 2) N210 with unknown firmware/fpga images =
in it.  After downloading a legacy version, e.g., =
uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =
=E2=80=9Cinstall=E2=80=9D I am not understanding what I need to do next =
to actually run the version, as uhd_usrp_probe =E2=80=94version reports =
the version of UHD that I originally had installed, not the legacy =
version I intended to install. =20

I am running Ubuntu 18.04, should I expect to be able to run the legacy =
versions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as in the =
example above ?=20

Clearly I=E2=80=99m missing something fundamental, and likely simple, in =
my understanding about how to use these prebuilt older versions.  I have =
had no problem building, installing, and running UHD versions from =
source but I have never tried to run a =E2=80=9Cprebuilt=E2=80=9D =
version before.=20

Joe=

--Apple-Mail=_E8180DC7-27FE-471A-8CE7-588CB0289484
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D"">I need a bit of help =
to understand how to run legacy prebuilt UHD versions from the <a =
href=3D"http://files.ettus.com/binaries/uhd" =
class=3D"">files.ettus.com/binaries/uhd</a>&nbsp;repository. &nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">I would like to try =
various UHD versions to try to find a version that will run with an =
elderly (Rev 2) N210 with unknown firmware/fpga images in it. =
&nbsp;After downloading a legacy version, e.g., =
uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =
=E2=80=9Cinstall=E2=80=9D I am not understanding what I need to do next =
to actually run the version, as uhd_usrp_probe =E2=80=94version reports =
the version of UHD that I originally had installed, not the legacy =
version I intended to install. &nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">I am running Ubuntu 18.04, should I =
expect to be able to run the legacy versions labeled, for example, =
*_Ubuntu-11.10-x86_64.deb, as in the example above ?&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Clearly I=E2=80=99m =
missing something fundamental, and likely simple, in my understanding =
about how to use these prebuilt older versions. &nbsp;I have had no =
problem building, installing, and running UHD versions from source but I =
have never tried to run a =E2=80=9Cprebuilt=E2=80=9D version =
before.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Joe</div></div></body></html>=

--Apple-Mail=_E8180DC7-27FE-471A-8CE7-588CB0289484--


--===============0333739822440583710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0333739822440583710==--

