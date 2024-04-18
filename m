Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E518A9FF6
	for <lists+usrp-users@lfdr.de>; Thu, 18 Apr 2024 18:23:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 099E538609E
	for <lists+usrp-users@lfdr.de>; Thu, 18 Apr 2024 12:23:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713457427; bh=lUJQ+ylN3QajnATl/iUPaGwvcsZhiqBtNymOh0hzOZU=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=uZK3itha+oMPRyKJy1STrZMlG+r5gO1LS7749LJ4p0kux3qXXJVTvJ10fJv1e7qnS
	 NzDvv2dvrvMmBNOfnAECTk/x1X/31rskBAVBBLji2z4nl5Ipymrkwop8nXLNx89nRo
	 dS5VzBJsz+SCR/V934AQTumB4x8cfJ6GRqCX6/6JQp2nV0RzuYl0Ay1rTfPllvKaYS
	 a9yqIOopjcq036Wou5OoGdsz0M3VkMgur3/qSXtAxyCqHzI6701T76pU2N0dYFX5n8
	 uOL4kpIq+K3fUwtVsmrkr8x8iaP9/oK+KvyGdRTCOu+jC9h344Iq/Lt5DP7EkwcUZN
	 QSEEZ+5E0RtQA==
Received: from sonic304-9.consmr.mail.bf2.yahoo.com (sonic304-9.consmr.mail.bf2.yahoo.com [74.6.128.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B206385E96
	for <usrp-users@lists.ettus.com>; Thu, 18 Apr 2024 12:23:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="uSzI5jfP";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1713457419; bh=EQ1O+j2AvLYh1kXDvH9GNoAQM/d/7kgr2ixpw/mzynE=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=uSzI5jfPMoUJ/yAhZNp/y1Yl2N+DjC/BN7fmwq//7ItciwzjRKVi7MOBSx6HHk9SfQnHEv4XC9jrD/EuBT746zOHlu+Fccd8rYrN9YANCEwNywC7myJmKQiR2JhktyjOVwtTWoJNN8sVUjGMbUn21/eKNN20bSQEIFGyv6b6lXBMD06pmdriQKc6gY27iXB+NFV6Mx6fuzHzWkX6ITLeYDaac0lKU2Vj6RpP34hU7j8RrOhK/qrZpAv5F1M6ySEz9mtoXcAgVmRlrU34vYN5TuWLsFNXLM7XduWj2ZltYrxglyyW27nEf2f7OJuTSKQYE1bNRyvCwX+YX1DOcl5/KA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1713457419; bh=1IPpQ/c5q+ks3fKgRK9iN4c/1+B3fwg6qzrxV34jRJC=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=DkNVxO6gkN6l8ESih8AamPZ5CoV9wRKb6rIgp4Gqj7AvEL9J+ErTOd5twVsv3yQKbxyu/Q/16vPs8IkFGQGd8uTlzllQf5jhuf4oL43tEBSG3dXF7D82wJxcmzKFistJodmbBXkRgvPHD0kllPC/Iy1X3gIZSLJ9VJKFg2JVvGNDlXqPNNM4DhCPqzO/DIKna7cO0tI1zsEZIbXjYkTb8VczRY6gdB4637GfdH6aId+XNH42HjGNFw7SKxYWGBDGlaoP5crTctNnaM9gPAO5fDd11fBtodJrwBkjMwSGu8T1ISfjCQY/rSkfDO9L+mUH+s80NT+7zoAcRbskFTnWwA==
X-YMail-OSG: JIfJ4PIVM1kcEl89XtWH0zXmLo4tc71bPv9VKw4RojRo.LJ7Ve52r4GzYepjrUD
 VjFoKR3mDRLL6lGItrPf.Fl2hskFsrkHrx5BPokir0xr2PQ4.YXjr762WSqN3mfKCZhmcX.OgWbA
 9fSRnry.EhfJAifhaqWVsYZN2feVUnjdkk5LrSncpzLgma3OJ_2U3fUejcWcuIhWGZj_MJJvHTnh
 ZpFWmtpU4ZYcmYxYy90IeGEPoQy3Ntjhlu4AredhjHxgUc9ksVJ5hqVFt4Zt1i6DwEQ.PQdsc.2u
 i_osPJcSRGpC6ZxPI9M.faNJ216VdEeQt75UlzmNvD7Ps0mwzoNjL.SRZfZhiGeNu8Ru62TSNTdR
 7k8HplDX088ekE3eIl6ZEYVUYaZKDZZWtLefRb3FVYHLhIv_wJCpUTf2aApfpV70DYrgT8mX4_C_
 97z8SZiInGyL3OftMHlR5l5NOskdyY476N4uxAPPKMUv1d9uBJeL4Dyv22RDSgWnwssXPSJGg2pV
 DN17Cq4YBs15oT5YnNrYmF3TWBBtkm.10yxwkCffZDv_7Y52urhwWXqELhmI31HQ1ZPsc5HSjOj_
 Q3BNlrtc2HCgteg_16rnVgM6FPxKgtbxHM.pd8mhM31Rq7L2RCeVdURe7oKNjWAwFVhMJhINPaMt
 LydXPOyviZjvq0QTWJwczvD0IZcSMN4jcZeXprXUPrF6.h5E.M64RXsK3ph1s1QPXaqQXYxz_3dw
 HntLVgjh2TD50A2HGKYNBG.DtJnoSpfElpduBWO38oPNHrb4DZfFVlKidpl2WCUDCQNdXbhDEuoC
 .ncSISND3aRph4Qr._dSKiwBCl5u.EQz94SnIX4deEaPOjdOSSRRuuvUfahoSwxYTvZ5ziuSDoOS
 Ck8m5Gzy_7YjJ8wARlj62MC3oGhJ9Mm4XaiQUY8iTRi_370UX9HRUfylZgTtR7LHdyX07ZN4ANoF
 kObEryPV4wm5KwAYfTDppy3WkIseOxe1DWU.rkFBvtqjPuPCpe0PbiWVLBpYNelY1Ylw26QhoM02
 TtI3ekFxmw6cJ2cAVYOMgATrD4B7Ssl2FAHp8xE5AL86Tnh6UNRkKRg6ARG971GwrNCikU2biJ0m
 j7kDqJ7S3hMQwVm.oZv.zJR3rT5wer_XE6WoAuETR_Yi3e00VDABYDNg2OHYvTJ2rGQHi7tM_vzI
 EeL3ibk1Y60.wP1ekKFfC90KXijiO9XmQx6mlORQZV3xs4oM59y_cQeYg51zDN24CjKexQFGnXGZ
 JAYSgQOxvdeC_gRDTqCjXLm7neSaRvD5yuYGLVyQd0gsYqnvi9mUaLgKai2N4IlA5xeDPDjfMmoZ
 ev.Aet2iNlrVtv6HH1hvi0USzifa3t4BWt5DxaytkI6CV0LSKFB6g84Xi5gOwc2rf2idEyPL.NLv
 8yj5wl.6RLnTJvb8eIlyS.6U9cIG6CO.uoD_0QqfI0zIPV4iwwDwdDKhop_Ga4_QUqpdpyUdECI7
 5klfO.UOLYQAM2J.b8NpLoXH672lWC9XM9uFbupSdPtGxHPE.mMAboLkklVtDgteUFqcoaxm.o1w
 V0bFFLbhnoV1hu77kfFO2OQrpIf8m_HoANvWW1Qryb70mPUflacPQPScJVQnMZiIyfamMX3op_60
 Mpe0lkxSUQCKEJQOayqySrC50BhhdxVcGvb5ou5zlZ41dn_lXFFp402pKekXtmtK9uHqdvfe9wCZ
 0t4VV1fRQltNYK4.d3vWpaYZ9c2o4zk51fhiXihWnnFuMoRoX5e1deeCGfoQ1F7mc_pswwrX15mx
 _9FLyY.sfgliJenne0VFGXSTOURxr0FKVA.CNfTY9D5ieB3lwfoAg9KgTFuHmQUC_DOuwEqfPE0Y
 b_E2EmxZocgWEWJqkIw6EYjPofZUPZ4O.jvXj1PFABZ1btotYl9j36P2VbWh5MUsJGFShOBTkE2S
 ADuNrO.iXgWBK3PlXPm6vmEAah3etexRdh31rUxxVuQRw2dViSXTnJ467G034q4qBu9fuJ5uiZr3
 uYuzs4N4bkuce_rHgd3xLl25rwrlH6nzDJZUbgoePISBIjpbfzJz8Hkxv0MFV..nnZ9_KnQYYkRu
 BFyFpTiSzCvQLtUOO5rcTCeJooIlvY6GDqg7eX9NDkswVJ7vFJgXab49zbZczLWIu_wbLaMDM8KR
 t7HdMu127wLn_lUHyi.z7aFebZR1Ne7gZOxS8ygQ70oR5iinFkjeegPXslHGd006yZUqFLct.TeR
 TDsCDIhj_19YNhTL5__zSq2lHvQ--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 6aa25169-f560-4b04-8749-eb3c34b6e3da
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Thu, 18 Apr 2024 16:23:39 +0000
Date: Thu, 18 Apr 2024 16:23:33 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
	Rob Kossler <rkossler@nd.edu>
Message-ID: <520486008.461133.1713457413705@mail.yahoo.com>
In-Reply-To: <CAB__hTSUi-hEVd4BuZ6ujtF8mLkzgudj04U7w9O8==o4hyfHhA@mail.gmail.com>
References: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com> <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost> <1697372280.342024.1713419690912@mail.yahoo.com> <PH0PR04MB83115908F44B4BB9C7FB8713F30E2@PH0PR04MB8311.namprd04.prod.outlook.com> <912423d2-5f78-4622-ba96-44197cbc7d18@gmail.com> <CAB__hTSUi-hEVd4BuZ6ujtF8mLkzgudj04U7w9O8==o4hyfHhA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22256 YMailNorrin
Message-ID-Hash: X54E2MTZKOEDTMS4MIAPUNL7VGRUWQOQ
X-Message-ID-Hash: X54E2MTZKOEDTMS4MIAPUNL7VGRUWQOQ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unbalanced power among antennas in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X54E2MTZKOEDTMS4MIAPUNL7VGRUWQOQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5803360792533597844=="

--===============5803360792533597844==
Content-Type: multipart/alternative;
	boundary="----=_Part_461132_913571989.1713457413704"

------=_Part_461132_913571989.1713457413704
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Rob,
The transmitted signal is cos(t)+i*sin(t). The abs power will be constant. =
I plot the real part to show the waveform which contains both power informa=
tion and phase information.
Thanks,Hongwei


    On Thursday, 18 April 2024 at 16:51:22 BST, Rob Kossler via USRP-users =
<usrp-users@lists.ettus.com> wrote: =20
=20
 The plot is titled "Real". If this is simply the real component of a compl=
ex signal, then it is not possible to know the magnitude. If there is a pha=
se shift, then the power may have shifted into the "Imag" component.=C2=A0 =
Instead, plot the abs if you are interested in only power differences among=
 channels.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_461132_913571989.1713457413704
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp16105b66yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Rob,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">The transmitted signal is cos(t)+i*sin(t). The abs power will be constant. I plot the real part to show the waveform which contains both power information and phase information.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydp964a9cb5yahoo_quoted_4295503219" class="ydp964a9cb5yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                        On Thursday, 18 April 2024 at 16:51:22 BST, Rob Kossler via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                
                
                <div><div id="ydp964a9cb5yiv4684595363"><div><div dir="ltr">The plot is titled "Real". If this is simply the real component of a complex signal, then it is not possible to know the magnitude. If there is a phase shift, then the power may have shifted into the "Imag" component.&nbsp; Instead, plot the abs if you are interested in only power differences among channels.<div id="ydp964a9cb5yiv4684595363yqtfd45584" class="ydp964a9cb5yiv4684595363yqt8299321138"><br clear="none"></div></div><div id="ydp964a9cb5yiv4684595363yqtfd99235" class="ydp964a9cb5yiv4684595363yqt8299321138">
</div></div></div><div class="ydp964a9cb5yqt8299321138" id="ydp964a9cb5yqtfd49949">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_461132_913571989.1713457413704--

--===============5803360792533597844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5803360792533597844==--
