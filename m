Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 785065FBD36
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 23:54:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D69638151A
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 17:54:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665525278; bh=kIKF4YyZZSp0Y7DDcjy0R3R4thdKDY97OeFAt0mVPiQ=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=e85RAJyrAgUpuT78fOsTsu+CyXjo0x//Ny6glL4P1W/RYnmKU1oxMAVBHT4jtUyv0
	 mS9LbZOjCgdhdEs01hrhiNEU1Fof5pIYBK0U50QOZJQMkdIKIbcQDkGzpEimegwmZJ
	 7NskjMw3lzGsNw/q6l1nMJlLOpVOcuu7AqyTpSuVriRZj5BjhoMQOyOS8nRCX9Lzve
	 MOAj1jVPnoOrYsCa2I/Mou3+bm3ocFbZVDvAhu/oSBSfFftkAa8inatIcRtOBMpfyD
	 giX0BqvsXEdfAXIqfLFLsZeQKx1nM1CIyMZqCRNnNEt/irLoZSiTrDQTETC5pnJz7u
	 U/zj7yiJfKR1Q==
Received: from sonic321-26.consmr.mail.bf2.yahoo.com (sonic321-26.consmr.mail.bf2.yahoo.com [74.6.133.81])
	by mm2.emwd.com (Postfix) with ESMTPS id B1CA1380999
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 17:53:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ER4doy7f";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665525198; bh=8ZbszJIhWIgH9/IEXfMbXViarT1U02N6wfHVG9hNmXw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ER4doy7fXIA7G56kwTMYn1WLG56DARyHR45+NdGhKf5swZGdIVCSr3OVlW+PSnjTz2JWodDhYq6z/AdEWzuS3XzIxXJmFjZ3lGx0Hy1NLLt+0+4afLpEdLfTExOhhKUT43DJXHribpty8MKCezv7iUyvM6ejFCPzwGN8tBzD705BXLGvQmthhqv0IxGWgqLNHykKllOtbXvpc+53xWLeFYSFnIImXN0jGSFGnMnE72glfLBx4ehevoYbjND4QLXCQK/BEoOL1FCb5RTanEl58YhGpwNaQqG52iCbUxRML30KIKjgRzYzAMDS9I5hp3cM4m/8oPyv0jOKNKSYKlde6g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665525198; bh=hkVocxEM4jVMj2unFcx3zNO7CabZJ8ihBEuQadWiycs=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=nFntbHoPMrB1sJgp2oAhqFhloxVEUT+RG7AAqA4A5k6NLlklz4d9H6gMbWVn29oX//SAeFBK073LepeGNb3vndtGzkeIILi/bfPl+tHj++m4YlqQ3nvQMkuCER6ebDVzVJUg1SQ3kq9WthA1gM0UKu4HJBL7RzxXIm8nsA8J/3cnp1pj/ren0g1qDN7j3FM4UzQMApVDHXixEdcF5LC7sMCR8/XJ6dpZDxcyLHV5sk7vRdkygL1VPBE1Ssa/XyX4UmJkcbgvVknaQSegiAG7KtebNhgY2jRN/4VbeZ9GAPyon9M30xAzjDFCt3aOdkp4+n/0bykLaPVy6kded3j7Gg==
X-YMail-OSG: Pw0tn2oVM1noM8TJFOiO2jq0fxkfag8oA0ueI9cJA82C.9pzvBTjd.cLOZowSyP
 ofxBm0DmyKg449DC.FRcmO8AtCYbAgzZrEVUiUKvEMN5hpxuGCEMxY2JmKRNnFEEJJJKOtmeULTZ
 QO_H_SY5JqH4rRrX5E1v7iURUBB9LL7p0PDjOWx1iIl.AXyzl0phaEwHXbJp_9h1ksWDlEUSxCM5
 ZctRvWGwUJi5m5AvgsPrN_KuUQbsFL8Rg44K7beBXdkqIqoeq6Gp5PdTi7O8.lx1cpMp1iSYNOar
 rJyVC5FKyZ0GJfWzJkInqZZKFZXUldgbz6HRgifNNTAosAM9Xza5xGIAjoJ_2q3fkbnfaYM6HBsN
 ZBpWnBWw5COiHQaHYC_4pF0Yv4bARg0iaEVpGp3vEoZAytuRIJ8NLrwiZaG29bIzn_eSCr_xSiFf
 IpP9PzvcjLLqJOlPSMaEYLocTPoUPuiA_byV5_j08o7Y10ECGeA5ErQoYXgTS2UFm7brmIqjV1gB
 dUzo7tRHGZ3EaYi0JfcZ72FAftggQX6EEle1z3mSjrx.Z1H5BdBMGCp0KG_NUY_EZfl6gQHmy4XV
 OGs5j5UhTWM5EJQKyAylJVjaSw_mWWKT5B8CYkLZxVkq4b0nucchCPb5tN0PZ5URoxvQuxevzt06
 _YA5Yb6aRLWJo40cVJcooQTUZn7oze0IPssCMLlpJD287sGWniTQhKkDv3BGQNrV1mmqxdSGyMfM
 _44uiDcP48F7ntdmaukMsNo4tHcRZeneJZSjajfxlw.vclmffW3KlowZyNAfM0u4VDYpfEbOwkru
 UDYwx4pD7t4YvRi_S5F_x3bYwKU0dUpjt5Av5CNdMAtk5YSdCc2Noyc5ckxX_IX5Cerw_5KcGQ12
 NXPKP7A6YDwJsuQ.6AHiBhLwxOqErK69x9VP1M3oz30sw2tu5AlmnhNl9wpbDj6JvWK.SylRIwHU
 gNj1lHGLGJcOPOJgsGi9oS0m2CJBRk2xmWCnCIApiZv9FF_yFJ.B55uLJ.XwMISWAsD6HcojKSkZ
 Roz5BCHMSdt2UddNB77zvMvY_sDiOVGX6pHakKp2AgP0QXRY76PrB9vAOYoP0YLtT8pDiHWbKBYy
 pxsOZMxvoH6b_WNdNpwhOlkIbXZyw1S7lvyC.AeKLMBff1kam5BKYtXPwQPyie2Yin_gMm5lellF
 bLz81GGkD2pwlKkLtIiU7EMN7HYiw9FIr29JQkAoOGbpt3YNS8C4.bxedc1UymZ7AfClK9KaOyaB
 ef0pAHIWUncIbKHQeXGpVX.I68_5m_oCFInCEDx52XlwQ4xkShal0b9hHgMW6.CXy_nKNHKKEFhU
 C5XVE33W0nxb1CWhYb1wIt2Vx1PhFRZHUH_ZmxOJsRw.rFR2Vtue7at_X.65tBioOV3rrwVlAU6r
 9tb.C5P4fAqS2zdjtMy9T7c.s7AJPRGN4PKK.MbhDGEeYAoWOyTejse3WYVTH0Xh5G7z6wfNA1Vv
 anm_AXLckxMcg00G9TrjbScxVxc3BByBpmex_CYOY.8CebQJCWB7Gsj.9J19qNiKqh_Ulpbct8HI
 SvdPAlSYcCM1UsVlnqxX5js7dU.ipaHZts3M5T2pdk0Nnj5KXbdfgF7RAX2Qy4UgG2GLfw.5x509
 pI6HApY5z1v7YKApkzVDr.eY8XOkln6yHITEF8BXBaZcYm4PQP6l_6hh2XDipPg2lctVVcghm6gf
 fZztiMwUAmUDnAZCW6aGKXQt1reoZ.UYd0WxIxXWFfYoKzymGbhZstZPYD.ZgS7cWH9iX4bp3arI
 hJLgepwA9g9OY.wEEiNL9JlMcDkdqSC.i9L1LGEUxxiA0Q_CG.oTaHnZ.FnH7rWEAQrj0ecykKsW
 14nInvkY.kzHuthx6QqNTPj9pSPp3_Tgn2pVmIMFfd_xvimm2Wzy4XVFVA4ujUVMgTLNv_5fr8.Z
 S66UOFGuMAmHPVpaRbG66_fsXT6BvmrKlM0a3SRqJncOcJ8sc4FjdG9DU9pPLj2kGgy.ZeyL5OEO
 E4ZQ2kKN6Ys_Ot5KVAJIPQUM6nZxIH5wuRczxigplglqBgsWQa5Uk1xeSB_VZ7TEiz5zjDk_JVUA
 W_rwItg76CBob_enUNorjKgRQ6vY4r3Yjae8nVCrp4X88RD83iovTqh1ig64c.vvKPFXfVs7ozcI
 P8_zFCkEAZ3lVIQoWkCnDQureFjSZM.3HFu1VugTY5Ja5OTUMNdqbylUm6gBqv0QNpHXRc2TP50q
 2KmvjkaKcVuvWujIJeFsjAM.drFF4sB7LiuGkc7Dm
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic321.consmr.mail.bf2.yahoo.com with HTTP; Tue, 11 Oct 2022 21:53:18 +0000
Date: Tue, 11 Oct 2022 21:53:16 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1376300873.302187.1665525196243@mail.yahoo.com>
In-Reply-To: <455d697e-ecda-8d67-036f-7661ff1e9cb0@gmail.com>
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com> <1567317201.188112.1665504920071@mail.yahoo.com> <83a99c67-3c6a-869b-bcdd-b0ef258cf240@gmail.com> <776005769.270285.1665519818410@mail.yahoo.com> <455d697e-ecda-8d67-036f-7661ff1e9cb0@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20740 YMailNorrin
Message-ID-Hash: NPNDA3LRZYO2F234CM3ZA2ZICKLCE654
X-Message-ID-Hash: NPNDA3LRZYO2F234CM3ZA2ZICKLCE654
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPNDA3LRZYO2F234CM3ZA2ZICKLCE654/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2685874516894768083=="

--===============2685874516894768083==
Content-Type: multipart/alternative;
	boundary="----=_Part_302186_436799716.1665525196241"

------=_Part_302186_436799716.1665525196241
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,=C2=A0
I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so actu=
ally I am thinking reverting UHD back to the 3.10.



    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. Leech <patchvonb=
raun@gmail.com> wrote: =20
=20
   On 2022-10-11 16:23, zhou wrote:
 =20
  Thanks Marcus. Yes, I use the get_time_now function to read time inside U=
SRPs.=20
  I also think the newer UHD versions should be better, but the measurement=
s tell differently. The queries to USRPs are sequential. There are 16 USRPs=
 using UHD 4.1.0. I query them sequentially and the time intervals one exam=
ple is as follows (unit: ms):  =20
| 1.683691 |
| 1.606288 |
| 1.629145 |
| 1.790804 |
| 1.685894 |
| 1.736507 |
| 1.471674 |
| 1.424962 |
| 1.460004 |
| 1.403206 |
| 1.435221 |
| 1.394569 |
| 2.043707 |
| 1.509543 |
| 1.853792 |

 =20
  In old system, 24 USRPs use UHD 3.10. The time intervals in one example i=
s (unit: ms):  =20
| 0.385173 |
| 0.296745 |
| 0.284212 |
| 0.273682 |
| 0.278543 |
| 0.274327 |
| 0.279519 |
| 0.274441 |
| 0.276693 |
| 0.296875 |
| 0.275212 |
| 0.307623 |
| 0.309554 |
| 0.28233 |
| 0.28234 |
| 0.275119 |
| 0.283057 |
| 0.277138 |
| 0.279357 |
| 0.276074 |
| 0.277696 |
| 0.276335 |
| 0.280675 |

 =20
 =20
  Though there is some variance in intervals in both systems, the differenc=
e between old and new systems are significant and reliable. Could you pleas=
e pass my case to the R&D team to confirm?=20
  Thanks, Hongwei =C2=A0=20
 =20
      On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
 =20
      On 2022-10-11 12:15, zhou via USRP-users wrote:
 =20
=20
    Hi,=20
  Some of our USRPs are using UHD 3.10 because they are in old systems. and=
 I am also using UHD 4.1.0 in some other USRPs in new system. The USRP prod=
ucts are all NI USRP 2944 (X310). In my applications, I need to use PPS sig=
nal to synchronize multiple USRPs. After applying PPS signals, I read back =
the time in USRPs one by one. Because of network delay, there is some diffe=
rence between the readings. However, the difference is much bigger in UHD 4=
.1.0.=C2=A0=20
  The interval between two USRPs using UHD 3.10 is about 0.2ms while it is =
about 1.4ms in UHD 4.1.0=20
  Does this mean that UHD 4.1.0 is slower than UHD 3.10?=20
  Thanks for any suggestion,=20
  =C2=A0Hongwei
 =20
       =20
 Have you tried UHD 4.2 or UHD 4.3?
=20
 I'll point out that the performance-critical aspect is the streaming perfo=
rmance.=C2=A0=C2=A0=C2=A0=C2=A0 The latency on get_time_now() shouldn't mat=
ter
 =C2=A0 that much, unless you're trying to use it for synchronization, and =
you really should be doing that.=C2=A0 That's what set_time_next_pps()
 =C2=A0 and friends are for.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_302186_436799716.1665525196241
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp4d4f5827yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Marcus,&nbsp;</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so actually I am thinking reverting UHD back to the 3.10.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydp73a21c8yahoo_quoted_6186119582" class="ydp73a21c8yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydp73a21c8yiv0843887143">
  
    
  
  <div>
    <div class="ydp73a21c8yiv0843887143moz-cite-prefix">On 2022-10-11 16:23, zhou wrote:<br>
    </div>
    <blockquote type="cite">
      
      <div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydp73a21c8yiv0843887143ydpef891c61yahoo-style-wrap">
        <div dir="ltr">Thanks Marcus. Yes, I use the
          get_time_now function to read time inside USRPs.</div>
        <div dir="ltr"><br>
        </div>
        <div dir="ltr">I also think the newer UHD
          versions should be better, but the measurements tell
          differently. The queries to USRPs are sequential.</div>
        <div dir="ltr">There are 16 USRPs using UHD
          4.1.0. I query them sequentially and the time intervals one
          example is as follows (unit: ms):</div>
        <div dir="ltr">
          <div>
            <table style="border-collapse:collapse;width:48pt;" width="64" cellspacing="0" cellpadding="0" border="0">
              <colgroup><col style="width:48pt;" width="64"> </colgroup><tbody>
                <tr style="min-height:15pt;" height="20">
                  <td style="width:48pt;min-height:15pt;" width="64" height="20" align="right">1.683691</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.606288</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.629145</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.790804</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.685894</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.736507</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.471674</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.424962</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.460004</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.403206</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.435221</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.394569</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">2.043707</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.509543</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">1.853792</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir="ltr">In old system, 24 USRPs use
          UHD 3.10. The time intervals in one example is (unit: ms):</div>
        <div dir="ltr">
          <div>
            <table style="border-collapse:collapse;width:48pt;" width="64" cellspacing="0" cellpadding="0" border="0">
              <colgroup><col style="width:48pt;" width="64"> </colgroup><tbody>
                <tr style="min-height:15pt;" height="20">
                  <td style="width:48pt;min-height:15pt;" width="64" height="20" align="right">0.385173</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.296745</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.284212</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.273682</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.278543</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.274327</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.279519</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.274441</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.276693</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.296875</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.275212</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.307623</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.309554</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.28233</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.28234</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.275119</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.283057</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.277138</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.279357</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.276074</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.277696</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.276335</td>
                </tr>
                <tr style="min-height:15pt;" height="20">
                  <td style="min-height:15pt;" height="20" align="right">0.280675</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir="ltr"><br>
        </div>
        <div dir="ltr">Though there is some variance
          in intervals in both systems, the difference between old and
          new systems are significant and reliable.</div>
        <div dir="ltr">Could you please pass my case
          to the R&amp;D team to confirm?</div>
        <div dir="ltr"><br>
        </div>
        <div dir="ltr">Thanks,</div>
        <div dir="ltr">Hongwei</div>
        <div dir="ltr">&nbsp;</div>
        <div dir="ltr"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id="ydp73a21c8yiv0843887143ydp2ff4a00eyahoo_quoted_6295737119" class="ydp73a21c8yiv0843887143ydp2ff4a00eyahoo_quoted">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D.
            Leech <a href="mailto:patchvonbraun@gmail.com" class="ydp73a21c8yiv0843887143moz-txt-link-rfc2396E" rel="nofollow" target="_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id="ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177">
              <div id="ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177yqt68152" class="ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177yqt5082330473">
                <div>
                  <div class="ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177moz-cite-prefix">On
                    2022-10-11 12:15, zhou via USRP-users wrote:<br clear="none">
                  </div>
                  <blockquote type="cite"> </blockquote>
                </div>
                <div>
                  <div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177ydpf0592c6fyahoo-style-wrap">
                    <div dir="ltr">Hi,</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">Some of our USRPs are using UHD 3.10
                      because they are in old systems. and I am also
                      using UHD 4.1.0 in some other USRPs in new system.
                      The USRP products are all NI USRP 2944 (X310).</div>
                    <div dir="ltr">In my applications, I need to use PPS
                      signal to synchronize multiple USRPs. After
                      applying PPS signals, I read back the time in
                      USRPs one by one. Because of network delay, there
                      is some difference between the readings. However,
                      the difference is much bigger in UHD 4.1.0.&nbsp;</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">The interval between two USRPs using
                      UHD 3.10 is about 0.2ms while it is about 1.4ms in
                      UHD 4.1.0</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">Does this mean that UHD 4.1.0 is
                      slower than UHD 3.10?</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">Thanks for any suggestion,</div>
                    <div dir="ltr"><br clear="none">
                    </div>
                    <div dir="ltr">&nbsp;Hongwei<br clear="none">
                    </div>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Have you tried UHD 4.2 or UHD 4.3?<br>
    <br>
    I'll point out that the performance-critical aspect is the streaming
    performance.&nbsp;&nbsp;&nbsp;&nbsp; The latency on get_time_now() shouldn't matter<br>
    &nbsp; that much, unless you're trying to use it for synchronization, and
    you really should be doing that.&nbsp; That's what set_time_next_pps()<br>
    &nbsp; and friends are for.<br>
    <br>
    <br>
  </div>

</div>_______________________________________________<br>USRP-users mailing list -- <a href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an email to <a href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></body></html>
------=_Part_302186_436799716.1665525196241--

--===============2685874516894768083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2685874516894768083==--
