Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DBF22AFEE
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 15:08:08 +0200 (CEST)
Received: from [::1] (port=33182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyaxB-00020q-Gt; Thu, 23 Jul 2020 09:08:05 -0400
Received: from st43p00im-ztbu10063601.me.com ([17.58.63.174]:36684)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <don.kelly@mac.com>) id 1jyax7-0001uj-CS
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 09:08:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mac.com; s=1a1hai;
 t=1595509639; bh=zquDMlweuNtj/FUkhxxHBSOmvrnEJ4zDsLpNNeyfCp8=;
 h=From:Message-Id:Content-Type:Subject:Date:To;
 b=qJQs7b99ygqqmbMBVVBSQqGnQ0ivmnQFW1qfDkMWfdN5SEswjJbcvn+wnNucjAmT1
 VUFksV/CN/3xMFZIc0TFD+j5RuP09NM1Nc0ml3WDg8hU9RIwACCg7yeMYajmJOKJJf
 G5w2BZDk54gXI0o7FFQCdD+sd+YMPduGUtgiHJ2Tk083l0iLV4ICZGAo76USt4SUzp
 3o4xJEuYaUw3KkTSY63RRKuMio5xSFYVQzzwEGHlSRjz2n0CsKf+mb2koowRFQ+jPB
 QpIaIxNu6cHsiWllaGeJnwryy64z7LN6OO2ei0xwXxXUBV+tcEcb2Fyw6Q7WrDFtGw
 SgErngQ/4qcpg==
Received: from dons-imac-4.hsd1.tx.comcast.net
 (c-73-77-239-39.hsd1.tx.comcast.net [73.77.239.39])
 by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPSA id 9F1527007AB;
 Thu, 23 Jul 2020 13:07:18 +0000 (UTC)
Message-Id: <217B2FD3-A266-4B65-83CE-FAB58CAC0B9D@mac.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Date: Thu, 23 Jul 2020 08:07:17 -0500
In-Reply-To: <b1917cce-a5b3-ccdc-bb4c-074f8866ee1d@3db-labs.com>
Cc: usrp-users@lists.ettus.com
To: Jason Roehm <jasonr@3db-labs.com>
References: <AF6B9576-0AB8-4F40-8A12-EA6E0BCE9AA9@mac.com>
 <b1917cce-a5b3-ccdc-bb4c-074f8866ee1d@3db-labs.com>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-23_05:2020-07-23,
 2020-07-23 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2004280000 definitions=main-2007230098
Subject: Re: [USRP-users] B200mini with GNSS-SDR
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
From: Don Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Don Kelly <don.kelly@mac.com>
Content-Type: multipart/mixed; boundary="===============1588590656903905789=="
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


--===============1588590656903905789==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_435DAB5C-74DA-4FDB-9AEB-362D4E18FD39"


--Apple-Mail=_435DAB5C-74DA-4FDB-9AEB-362D4E18FD39
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Jason,

A quick update=E2=80=A6. I believe you nailed it. It looks like the=20

SignalSource.clock_source=3Dexternal

command in GNSS-SDR is not triggering the B200mini to use the external =
clock. I get the same results with the GPSDO unplugged, so it=E2=80=99s =
not switching over to the external clock.

Don

Don Kelly

Agile Engineering

LinkedIn: www.linkedin.com/in/kellydak
Cell:  281-221-2853
4403 Orange Leaf Court
Houston, TX   77059

On Jul 23, 2020, at 7:34 AM, Jason Roehm via USRP-users =
<usrp-users@lists.ettus.com> wrote:

Those are probably jumps due to instantaneous changes in the frequency =
control in the internal TCXO. Try injecting an external 10 MHz reference =
clock and using that instead to see if it makes the jumps go away.

Jason

On 7/23/20 8:31 AM, Don Kelly via USRP-users wrote:
> Any other usrp-users using the B200mini and the GNSS-SDR software? =
I=E2=80=99ve got it running, but am seeing some unusual behavior so am   =
    hoping to discuss configurations with others.=20
>=20
> In particular, I=E2=80=99m seeing =E2=80=9Cjumps=E2=80=9D in the =
GNSS-SDR calculation of Doppler, and I do not see this running the same =
config on a HackRF. I=E2=80=99m guessing this may be a configuration =
issue, but want to rule out some issue with my new B200mini.
>=20
> Thanks!
>=20
> Don
>=20
> Don Kelly
>=20
> Agile Engineering
>=20
> LinkedIn: www.linkedin.com/in/kellydak =
<http://www.linkedin.com/in/kellydak>
> Cell:  281-221-2853
> 4403 Orange Leaf Court
> Houston, TX   77059
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_435DAB5C-74DA-4FDB-9AEB-362D4E18FD39
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Jason,<div class=3D""><br class=3D""></div><div class=3D"">A =
quick update=E2=80=A6. I believe you nailed it. It looks like =
the&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">SignalSource.clock_source=3Dexternal</div><div class=3D""><br =
class=3D""></div><div class=3D"">command in GNSS-SDR is not triggering =
the B200mini to use the external clock. I get the same results with the =
GPSDO unplugged, so it=E2=80=99s not switching over to the external =
clock.<br class=3D""><div class=3D"">
<div dir=3D"auto" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0); letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div dir=3D"auto" style=3D"color: rgb(0, 0, 0); =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
dir=3D"auto" style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D""><div style=3D"color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><br class=3D"">Don<br class=3D""><br class=3D"">Don Kelly<br =
class=3D""><br class=3D"">Agile Engineering<br class=3D""><br =
class=3D"">LinkedIn: <a href=3D"http://www.linkedin.com/in/kellydak" =
class=3D"">www.linkedin.com/in/kellydak</a><br class=3D"">Cell: =
&nbsp;281-221-2853<br class=3D"">4403 Orange Leaf Court<br =
class=3D"">Houston, TX &nbsp; 77059<br =
class=3D""></div></div></div></div></div></div></div></div>
</div>
<div><br class=3D""><div class=3D"">On Jul 23, 2020, at 7:34 AM, Jason =
Roehm via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3DUTF-8" class=3D"">
 =20
  <div class=3D""><p class=3D"">Those are probably jumps due to =
instantaneous changes in the
      frequency control in the internal TCXO. Try injecting an external
      10 MHz reference clock and using that instead to see if it makes
      the jumps go away.<br class=3D"">
    </p><p class=3D"">Jason<br class=3D"">
    </p>
    <div class=3D"moz-cite-prefix">On 7/23/20 8:31 AM, Don Kelly via
      USRP-users wrote:<br class=3D"">
    </div>
    <blockquote type=3D"cite" =
cite=3D"mid:AF6B9576-0AB8-4F40-8A12-EA6E0BCE9AA9@mac.com" class=3D"">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3DUTF-8" class=3D"">
      Any other usrp-users using the B200mini and the GNSS-SDR software?
      I=E2=80=99ve got it running, but am seeing some unusual behavior =
so am
      hoping to discuss configurations with others.&nbsp;
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">In particular, I=E2=80=99m seeing =E2=80=9Cjumps=E2=80=
=9D in the GNSS-SDR
        calculation of Doppler, and I do not see this running the same
        config on a HackRF. I=E2=80=99m guessing this may be a =
configuration
        issue, but want to rule out some issue with my new =
B200mini.</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Thanks!<br class=3D"">
        <div class=3D"">
          <div dir=3D"auto" style=3D"caret-color: rgb(0, 0, 0); =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">
            <div dir=3D"auto" style=3D"letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">
              <div dir=3D"auto" style=3D"letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">
                <div style=3D"letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">
                  <div style=3D"letter-spacing: normal; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">
                    <div style=3D"letter-spacing: normal; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">
                      <div style=3D"word-wrap: break-word;
                        -webkit-nbsp-mode: space; line-break:
                        after-white-space;" class=3D"">
                        <div style=3D"font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br class=3D"">
                          Don<br class=3D"">
                          <br class=3D"">
                          Don Kelly<br class=3D"">
                          <br class=3D"">
                          Agile Engineering<br class=3D"">
                          <br class=3D"">
                          LinkedIn: <a =
href=3D"http://www.linkedin.com/in/kellydak" class=3D"" =
moz-do-not-send=3D"true">www.linkedin.com/in/kellydak</a><br class=3D"">
                          Cell: &nbsp;281-221-2853<br class=3D"">
                          4403 Orange Leaf Court<br class=3D"">
                          Houston, TX &nbsp; 77059<br class=3D"">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br class=3D"">
      </div>
      <br class=3D"">
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" =
wrap=3D"">_______________________________________________
USRP-users mailing list
<a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class=3D"moz-txt-link-freetext" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br class=3D"">USRP-users =
mailing list<br class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></div><br class=3D""></div></body></html>=

--Apple-Mail=_435DAB5C-74DA-4FDB-9AEB-362D4E18FD39--


--===============1588590656903905789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1588590656903905789==--

