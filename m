Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 183EF1370F8
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 16:18:52 +0100 (CET)
Received: from [::1] (port=48776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipw3m-0003XF-Tz; Fri, 10 Jan 2020 10:18:50 -0500
Received: from sonic317-32.consmr.mail.ne1.yahoo.com ([66.163.184.43]:46557)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipw3j-0003RN-Ie
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 10:18:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578669486; bh=obnCWZDbBrkuRs0q1rXlFWxthQnrSS5v+kVnEp/xYJs=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=UNdgnJi4Su3ig1fld0Y44t6olBS87DMAWtFgfhSL2qB/m5efr4cPG43fEFF9A77Oti83QS+d1DJ0SaI32GdZqZ8tegnZrSH1q03hd2qX5S24R8IT7Btun4Qw1vFL4LUo2RtymFRf4UPmoMU2KIcB9jNt3wMf5BK8RBO83oJhZaUThelQTkNK3ZFlPqJJ4Wx8qGezXuqGN1mEzdaluIr2XmSNPqEWYmTWXdcKBDMq6gT0Pq1WjABDqOqgG/PtkSKdEQKdVhUJR1ycy3+7fgukL0lRygN6FqBSGmR2SIBDtsiVeKCWl2jwmyvzT4l8+qZNi6phel3d44VNQv9FvM8Rbg==
X-YMail-OSG: dHh3VJkVM1lRFQhm9_TRav.DPNCbOoZjBz3GOZtoKGzXtX2kTdnIB5dUfP0g2S2
 1Jtk8PxX9wqdVVXKBbf1nKyfgj213PHz2kRUGGFYrztM1Ik1IzOTFHq3Pf1IOC4FlH4FAyN91Yyq
 WafodILLr7gLTMU6fj6X6f.ZaGQQJjx2bwm.sZMQuebaLmj2dfrvEoT4jxvqAXSKi8z2m7N5CMK6
 1u5XsBWdgiR.Ow0HEKBJ9MIwqDVgDCXLRb6.2CjPzQ52W1PVxP4qmqm6kMQHM48GW0AlzKbuU2ZT
 _z3fYrrHTdgcW8x7tPSiFutChcxjJBkT9Kzi3mWxqxyNWwxyqq0wUWU.neWEqsT9gE8xLaiTkXf6
 2rEPkIiC_rE.HN1BX43HZkWBodeKvrhj8UAXj4YftvKXm22fvVhq7OnWs6UdoipXE1PssD4ydfCu
 vWSJxOnaS0dRcnNeo9ExA1vp9kawBzM4hS5z2XPUGRpWOdwIs2S0lFwXDWYe9UWpbkbBQwG8eRs9
 p2PCD5xL9Z6Eyc6EZFBJnuGNMLayv6HiDTGS4kzm2Oww22HhlWzrFN_3CmmLW.CTq1la6C2BheAw
 ejDKLCy2hsnGf1atfAzg88Zi2jwAiD.ox3CMziTZZv8F0eMpEW1EAP2VrLa3T7nK0LC5VHCRuaOs
 8zUnqq8t8ccVrzCM1xHMz7Lob2mB6cE7zWiu1KUfKAQCO2er6Y3FP.cORbyI5MToVYCxSa4zPRRy
 2Oa4P60MwFMzPn86Pz9O5XJUq_3sKpQ3bqFh0.tVzPtCH99UHEbg4wSRiCokBDTkCMMKDvecgZPk
 CHa1voR1mnlhz7eaqSnFIWEJ0cfEBuRH1P5Vc7BLuVJNyTGCcNteBsRgvXlaGBgNtt5lhoWFjR.E
 6_6UtlsYL80ncBB06b8kRMuVsOHMuwaWhvXMwT_VZhHPt6m6u6WpT5H2_zZsKXg9njjn_QEG5DSp
 fLJTLXGiwMfLuSPXoZT2t0J4iKzHTWGcGZ0Nh_mzZODta3cSNQeFieKbfdYG4L2xQRhoXxRhwdIV
 SB5JL1.GgEuOZ3cOUp3vKUkjzaOP6yKx9DlXR35RswVuzrKM93QLvHhv0RlmZdtnYW9x_JI2A5LT
 t9UrvKjvkmPai9Qog_O3MleG5wmQcSgKvq.U2aNfQ7ADC803AeQFOTCSlmCI5dZYYyxIZHPxliyc
 1LlqqVigkXQKon6T.4W21eTUNAw2DPkDqeYMVf2gWe7HGgiaH6iDwdGKKJZBUGX.drTd9lSwEGUb
 RW3ZlUOZRaP.aUPbBQ0BOr2rnpcJOkprMaWBWsoAv7LxeMBPn1K.2B9UVZF9IsPTGsgWJPOv4SHf
 j.WRchQccHlwwgi3.qVGxsgtLudoZdHp0
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Fri, 10 Jan 2020 15:18:06 +0000
Date: Fri, 10 Jan 2020 15:18:03 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1443822881.9651038.1578669483816@mail.yahoo.com>
In-Reply-To: <5E179C0F.8010909@gmail.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
 <900064020.8665629.1578507448504@mail.yahoo.com> <5E163E65.70104@gmail.com>
 <1693583403.8730630.1578516321483@mail.yahoo.com>
 <5E163FC9.4000802@gmail.com> <373709061.9116148.1578581344482@mail.yahoo.com>
 <5E179C0F.8010909@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: Re: [USRP-users] tx_samples_from_file : Issue with repeat option
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5853610072231064035=="
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

--===============5853610072231064035==
Content-Type: multipart/alternative; 
	boundary="----=_Part_9651037_1864020887.1578669483814"
Content-Length: 6494

------=_Part_9651037_1864020887.1578669483814
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Markus,=C2=A0 Thanks for the support. Now the build works fine and repe=
at option does work as well. I have runtime issues for which I have raised =
a different issue.=C2=A0=C2=A0 So this issue can be closed now.BR,Santosh

    On Thursday, January 9, 2020, 9:33:06 PM GMT, Marcus D. Leech <patchvon=
braun@gmail.com> wrote: =20
=20
  On 01/09/2020 09:49 AM, voonna santosh wrote:
 =20
  Hi Marcus, =C2=A0 =C2=A0Build is failing for 3.14.1.1 and the reason is t=
hat "uhd_dpdk.c" is written in C99 mode. BR, Santosh=20
  =20
 If you aren't actually using DPDK, which you wouldn't have been with UHD 3=
.10, then when you're building, in the CMake step, use
 =C2=A0=C2=A0 -DENABLE_DPDK=3DOFF
=20
=20
=20
      On Wednesday, January 8, 2020, 08:47:07 PM GMT, Marcus D. Leech <patc=
hvonbraun@gmail.com> wrote: =20
 =20
      On 01/08/2020 03:45 PM, voonna santosh wrote:
  =20
     Hi Marcus, =C2=A0 Which version would you suggest? Also can you please=
 confirm whether it would work on 3.10.1.0 ? BR,   Santosh=20
 =20
  =20
=20
 It should work, but my recollection is that there are issues with TX for X=
300 that have been fixed since 3.10.1.0.
=20
 Something recent, like 3.14.1.1=C2=A0 should be tried.=20
=20
=20
      =20
=20
  =20
------=_Part_9651037_1864020887.1578669483814
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpa939047byahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Markus,</div><div dir="ltr" data-setdir="false">&nbsp; Thanks for the support. Now the build works fine and repeat option does work as well. I have runtime issues for which I have raised a different issue.</div><div dir="ltr" data-setdir="false">&nbsp;&nbsp; So this issue can be closed now.</div><div dir="ltr" data-setdir="false">BR,</div><div dir="ltr" data-setdir="false">Santosh<br></div><div><br></div>
        
        </div><div id="yahoo_quoted_8849690225" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Thursday, January 9, 2020, 9:33:06 PM GMT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv3211306898"><div>
    <div class="yiv3211306898moz-cite-prefix">On 01/09/2020 09:49 AM, voonna santosh
      wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      <div class="yiv3211306898ydpaab9d6c7yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr">Hi Marcus,</div>
        <div dir="ltr">&nbsp; &nbsp;Build is failing for
          3.14.1.1 and the reason is that "uhd_dpdk.c" is written in C99
          mode.</div>
        <div dir="ltr">BR,</div>
        <div dir="ltr">Santosh</div>
        <div><br clear="none">
        </div>
      </div>
    </blockquote>
    If you aren't actually using DPDK, which you wouldn't have been with
    UHD 3.10, then when you're building, in the CMake step, use<br clear="none">
    &nbsp;&nbsp; -DENABLE_DPDK=OFF<div class="yiv3211306898yqt7592541966" id="yiv3211306898yqtfd02768"><br clear="none">
    <br clear="none">
    <br clear="none">
    <blockquote type="cite">
      <div class="yiv3211306898ydpaab9d6c7yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"> </div>
      <div class="yiv3211306898yahoo_quoted" id="yiv3211306898yahoo_quoted_9183161140">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, January 8, 2020, 08:47:07 PM GMT, Marcus
            D. Leech <a rel="nofollow" shape="rect" class="yiv3211306898moz-txt-link-rfc2396E" ymailto="mailto:patchvonbraun@gmail.com" target="_blank" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear="none">
          </div>
          <div><br clear="none">
          </div>
          <div>
            <div id="yiv3211306898">
              <div>
                <div class="yiv3211306898yqt1622953141" id="yiv3211306898yqtfd80784">
                  <div class="yiv3211306898moz-cite-prefix">On
                    01/08/2020 03:45 PM, voonna santosh wrote:<br clear="none">
                  </div>
                </div>
                <blockquote type="cite">
                  <div class="yiv3211306898yqt1622953141" id="yiv3211306898yqtfd46840"> </div>
                  <div class="yiv3211306898ydp27ebd4ceyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
                    <div class="yiv3211306898yqt1622953141" id="yiv3211306898yqtfd62190">
                      <div dir="ltr">Hi Marcus,</div>
                      <div dir="ltr">&nbsp; Which version would you suggest?
                        Also can you please confirm whether it would
                        work on 3.10.1.0 ?</div>
                      <div dir="ltr">BR,</div>
                    </div>
                    <div dir="ltr">
                      <div class="yiv3211306898yqt1622953141" id="yiv3211306898yqtfd81969">Santosh</div>
                      <br clear="none">
                    </div>
                    <div><br clear="none">
                    </div>
                  </div>
                  <br clear="none">
                </blockquote>
                It should work, but my recollection is that there are
                issues with TX for X300 that have been fixed since
                3.10.1.0.<br clear="none">
                <br clear="none">
                Something recent, like 3.14.1.1&nbsp; should be tried.
                <div class="yiv3211306898yqt1622953141" id="yiv3211306898yqtfd34950"><br clear="none">
                  <br clear="none">
                  <br clear="none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_9651037_1864020887.1578669483814--


--===============5853610072231064035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5853610072231064035==--

