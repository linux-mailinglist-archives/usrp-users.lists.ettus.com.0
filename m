Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE1269BD10
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 22:23:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C84813844EC
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 16:23:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676755404; bh=scG7oju+cYcoPXZoOH0hgsLhAtK+pWvs+MdZWUpqYxA=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EdlKELM9KwzMx3VcqGY0MHT3xW3TGeT23j0ghluVObueGhRkWpVZzEufJR2uZ+egL
	 +E9lOkgTYuxRUV4/ujxNE1wwkrB5Nz3WreNKp2ca+8TlTT/Bx5Cpsntp03hK8pu20P
	 j7D8cA9EJsxKVEkcIFusNBNN3kQ7VVRYe0ssoSrJTxdzNegSHFOv7R3+Z/agXlJt5j
	 QjJgPTYTCtgVTyIKkcFYRoPIPB8WpRQZowQGutbf66cx7Qyf/DShfHrZH5GsxWWW1q
	 wdq2djiCdvtkQSyXXMl3opAQJlOt5vj/nY2E8KltFP7AkEVYoV5WtruyJjxvalaQy+
	 rBHAgX4ezMUWw==
Received: from sonic307-2.consmr.mail.bf2.yahoo.com (sonic307-2.consmr.mail.bf2.yahoo.com [74.6.134.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A514384225
	for <usrp-users@lists.ettus.com>; Sat, 18 Feb 2023 16:22:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="KlG/xyqo";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1676755367; bh=AGmaFg/YTM2zHb0e9b8YInUIGxcnNK/ah3pk92HThAw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=KlG/xyqoR11e8pvSMQJD5/kwsttxMJMoiHA3V0r/PLpdPTPSvDITGMdLAHOBKNPco2ya4KfAkmKvTS15cP+pANPUrZoj2RmfypN+OJ6/yDHMJhH5Jf9C/QpZecromxQChsgctyxMm4V9koLZy5dlGWnVu3f5VEuvCeHlt5MyhJGBXhKgAnaFe/Ts2dC8OGszilaIWzAKbMdft/GIM3LuhRfCIGXFeIEHmF0hE89/z4y3Lk+4A+14TMjIbPf19+99/7nNnbqMLmMUqOBIt3BHtuAtExnawlvHbOv2D3qi2MJZOZCv/nC3c3It1eA+6S6rf2jv6/+IOX+EDk/3ggOdTA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1676755367; bh=V1VpiDOcL1rGeynjJ2+mPCiki1hPedTF01OyokGfMbQ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=AzofHXg5clzSgnAZ3Ktt7dXz2+hs1zw8A0hXJwNda9JhHSLpfffdLjl32iHrofAI5Ys71Vor9C6COaiCNq6V20uJkF71D5FBta0qG7N1tW2Bt2cJ2ZQFueb2Lo/C79OEXInxBf5lkOiUPexmjzDTcVHxGf4pBV8wx9XfNxmIJNwATBI5KkVP6YlIubLGrGpR/MHd8/8aBwDsUbTIpwVs5NY837FlihGl0zzi63WFo0TfkBiAI00zoQfOUlQRpFVLw42JlTp6H+j2ZJkR5yhZnuAQKyqWkNhdZd0Frh12EkRr8Yt+lgOoGDAMT/82tXUNuRWbe7zH2VB0KU7vm6X+rg==
X-YMail-OSG: tfS1V9gVM1n7S74f9axCDd2T2AeHEtTU_P3_ti2lSFjjA6yRAFeFn.X6RkrdiTM
 AXKDvYLtF29IVGYnkYAlcRxRFC0MPElNSd5_oajqH64_Swd16APDI1.lERPSvQiH.qYFG913qfIB
 r.GdLyy9zaQOqrwE7hX.bOC73EvCAW3HyqmvPfxKbpN9_IMI9KrBIaZS9hVCySgAtF7kvRUWYyl_
 .XLhKmlNCovreiTIh4tBsmbbuMCfbjJYEv63iApjFMWMLrmEuHP7TzImVQzcCOjx0wRZvi7XHBiB
 dCjskrHnfWwA7XNn3zwGlkONMIibaChnT.kLQapbbudwYvY4Bex9unC113V7A1ewfhEbxqEbSVuQ
 bnLkLDmesEzXycjkj6OHbWwInrpi04f37Oj8Cd_Pww9x05Byq2JA0HYtKOP32b1s8IVEoU8Plp4c
 fUy0mK0vLbS93FTScMEQG.T4wovEidzlApEzQUG8b1tmPs89YTG_adDQt0chsJvREx1NNXSZHf7H
 4F9UgOCOTJQ.V1L.s6O7aPCW7f3_5T.FMk..1.fhvbSpR5ffExLvq88GfcCCDwn93MtV7LdrqPDq
 2Shjlo_HyfTwUZT5K62gCKqV9tGOEZn3DS2NGU_C2UcTX3qEFGgU77G1nEDNYHgU8um59sVRTF6G
 EXOOvyAogrs1pHiNpC3EquRW0PDSVATXan4tkzDQeQTzkNBrdPlsK_SRRu5HQopKIKG3YrFN0SG1
 F8_20nLiLaN3jlFwdz_pr3Z6JkoVkURLpKanGlceGKKL_XRIAqjVj2j_YiaB4m.cNQjqU0YEp.ZE
 2SbERRwEys9kqI8RuSYkcLyLxXqd11DZdv_vJ8SNH90nEVXc.Kn3KZKCXkT5Y6k1Gr8n9vUAcNNE
 Fed_B5TDJhoxM41BUzJsTVwgYMd.MlTPkgH2IzOdM6SkyECmFFmoigSCGfS54A9D0f6Qtubav1Ok
 2Pnogog06y1xWQF4QOsnY1VTGdWTF9U2CpXAu844QNgAc.YDRNrlq_UlvcbyEn.dEfniHJgm1lbT
 7u3RuOrh0qb9gU0QgZn32erjk5kIi6zB5iSxAYINPoctg3MRTZHOqpBcaIFjIpEk1x0y9NP3DCv5
 yFfDgUzBWbXaLCN3KK3mOBgwetG2VvUZhtW0h4UWNw1CHgwKmzjMiR_fLLPYghDMER0b2y8plfAC
 46mPsGqOZzxP2zlM7EQHHMBKvd3o8xD_g7uiJqyPHKDfOHbZPTIkdQZZrGcTq0m.Wc1xc9Nr..Ok
 4pbw90qv3t14vrHu6DrwfZtDD_syTyzWDPJRy1BBU.HrGJTb1ozfirfrkAyGxO3rqgL3piesE0D6
 7ncAVbjc7xm9EWK1pbY_s4ESdoTypTylFCSmR1oJC4WeP1MDFkiinRc5DWFJ.1vxTkwyW.qWClWP
 nHpU57k6B1YqTbAIY28R7xooVdl2fCE.UsQqioyWd82RNtKW46cBEI9LK3vvte4QC75HyyY19jVG
 DZ7Caqg0hB7NMN9yOXsarVC8mkWK5soFpm1wOYUT1r7vsHsdUl2V5i2YyU8.lgKTXHT7aaRF4olC
 HgTYvq2vNZpY23qkmCBd3kDMXLR6eg7PK34ajSiHJUa1fvz1GCMXdpvVAwSLiRmRGP6aCS6341kk
 DDvE0TGkDKH8fv0YpMS_DWsPODLS3Z5nyXm1C84aknB__Iz3cEqzTApiRZp6tZ3yy_tFAjm82SC6
 np0ws7r.1jmuhAzIafH5LXmQyXKu.wFWu3Kbda33TIALCCqMv3OOaaYSo4QcAc3DuH3jYHQBzHvQ
 RyXJvbsWI5m3Iwj6M40Q6j3coOIxi_H7b.bQNbskuvNSZFvoP5yt2QBZlEYKcGIf59hyRNIUiMiP
 u2wJzsNhNQBiZa_5a8s8WBD8383Z7t7GH2CNhkHamD7ufZAMnpyvyTSya_4A_1Wc5rc2Rnjpz1Jh
 DkqVq3mOXZu2D9DsxTKlMiIOD6nouOaIjcUxUuakHi_RL4iWK6gDozl5WlTzb_yaXfSFSapZ7psO
 eHKyc1yNCV6ZQtA6NtYZ4a93mjCkNL.LWxBATaLlNQVbD_jA1FiYfgHNqOaz_YvoSaGNkSCAT2BM
 QvU9EXA1UGLUMLw3q0I8OJ56CuIDYHIgdbarsCKr95b_N9efUf1Q_An9nypQNv7T4PTfrgvUX8iy
 ey4Wc20YFmMkQ77Onx1LMtA6kwAw5FvJHk1eoMd9CIggR.T7L8kfeCVuEp3cxERhurAXgtFHW2Hn
 3ibzL.FhiADQKbBQsnGzK2UEcv7Pl
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.bf2.yahoo.com with HTTP; Sat, 18 Feb 2023 21:22:47 +0000
Date: Sat, 18 Feb 2023 21:22:45 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1950853334.1992190.1676755365858@mail.yahoo.com>
In-Reply-To: <eaa2499e-6157-7270-575d-380b4ea930de@gmail.com>
References: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com> <1492376160.1909708.1676708832546@mail.yahoo.com> <eaa2499e-6157-7270-575d-380b4ea930de@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21183 YMailNorrin
Message-ID-Hash: ZTNPEM5WGK6GORRJRFBAXGRJEGDH6MGF
X-Message-ID-Hash: ZTNPEM5WGK6GORRJRFBAXGRJEGDH6MGF
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dual 10GE Ports in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTNPEM5WGK6GORRJRFBAXGRJEGDH6MGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4547437516046587654=="

--===============4547437516046587654==
Content-Type: multipart/alternative;
	boundary="----=_Part_1992189_588413932.1676755365856"

------=_Part_1992189_588413932.1676755365856
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
Thanks for your quick reply. Really appreciate it.
Kind regards,Hongwei


    On Saturday, 18 February 2023 at 17:10:39 GMT, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
=20
  On 18/02/2023 03:27, zhou via USRP-users wrote:
 =20
=20
 Hi,=20
  Some thoughts about X310. They could be silly but answer will be apprecia=
ted: Why does X310 have dual 10GE ports? I think it is for achieving the ma=
x 120MHz bandwidth.=C2=A0 Though dual ports are provided, I can just use on=
ly one but the max achievable bandwidth will be reduced. Am I correct?=20
  Have a nice weekend, Hongwei=20
 =20
  Indeed.=C2=A0 For example, if you have two TwinRx cards and want to strea=
m at max rate from all 4 channels, you have to use
 =C2=A0 the dual 10GBit scenario.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1992189_588413932.1676755365856
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpd4b511byahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi <span><span style="color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">Marcus,</span></span></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks for <span><span style="color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">your quick reply</span></span>. Really appreciate it.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Kind regards,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydpfcaf3f20yahoo_quoted_7131648256" class="ydpfcaf3f20yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Saturday, 18 February 2023 at 17:10:39 GMT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydpfcaf3f20yiv7745315877"><div id="ydpfcaf3f20yiv7745315877yqt06171" class="ydpfcaf3f20yiv7745315877yqt5961140751"><div>
    <div class="ydpfcaf3f20yiv7745315877moz-cite-prefix">On 18/02/2023 03:27, zhou via
      USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydpfcaf3f20yiv7745315877ydpd10f995dyahoo-style-wrap">
        <div dir="ltr">Hi,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Some thoughts about X310.
          They could be silly but answer will be appreciated:</div>
        <div dir="ltr">Why does X310 have dual 10GE
          ports? I think it is for achieving the max 120MHz bandwidth.&nbsp;</div>
        <div dir="ltr">Though dual ports are
          provided, I can just use only one but the max achievable
          bandwidth will be reduced.</div>
        <div dir="ltr">Am I correct?</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">Have a nice weekend,</div>
        <div dir="ltr">Hongwei</div>
        <div dir="ltr"><br clear="none">
        </div>
        <br clear="none">
      </div>
    
    Indeed.&nbsp; For example, if you have two TwinRx cards and want to
    stream at max rate from all 4 channels, you have to use<br clear="none">
    &nbsp; the dual 10GBit scenario.<br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div><div class="ydpfcaf3f20yqt5961140751" id="ydpfcaf3f20yqt67517">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_1992189_588413932.1676755365856--

--===============4547437516046587654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4547437516046587654==--
