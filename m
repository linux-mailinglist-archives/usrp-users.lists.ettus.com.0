Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C32559143C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Aug 2022 18:52:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08644383F72
	for <lists+usrp-users@lfdr.de>; Fri, 12 Aug 2022 12:52:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660323147; bh=n6gC7xOSCV4FzMM7E+7Tf/XzdokZ4UorwrY8fVqNPQ0=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=DqRGkp0zcvgdXpOY7pLIErjQqyeAH5Vj+AwJlFOx1AXnjozjWhl9fjyDb0c8mgTfT
	 hxH0X5nDj9AoFrbMw6IrgiR0n0UBWJ8vZ6YDwS9qg3AYH7RqzBOlN/xQw/koWPxnE+
	 Bf7rkKxjEkl79I1CpxveanY+M+PgYbbJNZthyPgpcm3dR5mEP4PV9JI++Km77ZVH9H
	 0UpPBXlK0jE7GJwtpBOzCf3ulMpeIOh8g7gkvXulsPw9tAauaSUxGou55gXI3bcjVo
	 6q0ezN9PDddRE11vXBJacb1w3aCthjMIAaSyhFHkQSeqn7sx0E1J9OgM+hN00rPZjT
	 4msKRnKbNryqQ==
Received: from sonic316-11.consmr.mail.bf2.yahoo.com (sonic316-11.consmr.mail.bf2.yahoo.com [74.6.130.121])
	by mm2.emwd.com (Postfix) with ESMTPS id AFD7A383C8C
	for <usrp-users@lists.ettus.com>; Fri, 12 Aug 2022 12:50:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Ha4cnbr6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1660323020; bh=C7b1pt798KS52TyDpt1VRS2AeWPSu2tHSH03ncOped4=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=Ha4cnbr6Q2brw1XKPqYpXgUI9fAm3REVfhaJselJqBJw5lxROhSiZR/2+uQOPwNr7VrmqJqJwObSfiL7lK+5IhUTwfcbN9xglFjUfnqLvQwA8nE1UOWD3MORgXWHL359ZPEUQCbcPKNP0Y5JicwdT+uH3dqQ9DYU+4KRsGRjMeOC8WtVwqUoOa4qu8gsGI1fa4mKK4fEBXsPChahcS8q5D/S74JaHxr64jZUnI/T9l6eOBLrcR3cVf04lRyp8BQklb28vAf8Ymzft1Q9dvmhITRzU/o2m5/ufTeSFr6mzORahJaSUpTPz3KmL8t44FvQV7gvMz0PJM7StTwya9SQTg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1660323020; bh=ESkEve9YzWGKQF6GwKPRwOhNapSgmVSOc2xW8bs0Nvs=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=WW9sslig+Z4KoGkYPvCRr1VXzYZrylwZRSoKZS0pQVlrw0YYxlDS5ftGjJA95QFB575hFHQPbHSOsOUwNwYy1UycAuCY9jFERBF4aHf6v75xFQB4N/wfAVw2iArVi9hLEWN/lYSP5WWadLnb3gKcfjo5fknxhmP+CECKZkq22MwA8p7oVs+WZt68GdMXPu4XjpGYISQRn3TtTmJvIIcPsCUTIolI36pKOiFwUEN/xfqaYGejuwVCPiXaARDPcQrriQJI/fNtL6YjfGk52My++C8kcfcryYaVr1m3zKaZdhjhsoMcmTE3NZhQzlwRimILrJmNs8cp+8luc83y44KwAA==
X-YMail-OSG: 4zWv.YwVM1ltUc3.odmubqt0YgdX7KN7cDb5ChS4qY6SmNv0msy7cvBMwRpe6YP
 TDdsWLQ4FxkND4v9Frt1ulfLKLQekjCapO8NjIHR8pItw4iLDhSVboQ7Sh5_KCl3quOSHizbCeR4
 rrKbm_Uo2kceHKMF3ZyUJW35zI0kQhJ3o9EcWIkLnLOYSKEg6d15owQSOjFvpZrzERH_dUNiW_7o
 58oM216OZXADCetO1vpW2ifNjukfAMUHPsjvo0EXrqzjeTwAh4ImavVYIneSTDzSRS4ezYQQpAqg
 26dJqp7DlhSpTh5jihqHC6FCcOieDO.fpUPCkFfOZhzyYtGOJ5NGNfkqSSzB4srjKj73GX89m1MC
 HIJO7HBtu3atP93tKogLxf.064Z7DPmPds4ebVa1xARxM54hVvyT_1eF.jD2XR0Dplmx_yCfNYs7
 MTkRaOVoslUK0TygJh57mMFSQ5MfXpNCt5TzdP44Cwk29A.XmwYWBUUvM.RcKMem8woEfm_CaZie
 cOlMGMM7.RmfXhuVSOi8S56KHfW1DHHNBbAWaGDqQCeGeHpRFHgsKt8WX2oSaw0Md2gxBT4LGaj4
 zcYaNVK5XpIzJFGivEt3B3INqxA.FWZOZtVoqSsVgs4CHh4LtfH0zLLLtKABO_EzQ8Sdb3rf6kxW
 aLNrNHy7731Wy.Ylv0LJJitp2xaac6RqCbQkJACwOPwuiGbFeFuBWBxDMPdKH1tUti8YRVi.VL3H
 BrTZepKvUr5yeC9Gqp9aoN4vaY7mV.b44qtNwCTBNrgSpFQPY07y4bHLIgoy.9pcO3Hwjg4n5SCZ
 yKPSs0g7QVZ9Cobm4xJ.oR5EcND3nXigGTbmnJwePGk4uwUN075uvMIPleyPq04S4bFuqfM78b6u
 4P1nAjfv1FOGK.yP3S1uutPY4k7DnsRLvQSnFs_sDP5wvrvO8hbPHaNQ2mV49RHCSBCS_vmvt0M1
 Qd.uUlNo5Oxv0s5pDXYbzoChwTBd26l_AjI6ZyPYtOlvqkYgvp0pT8qEyWTRH3puLDsW9_KgR4oj
 j6iQMgDYv6l1M5azjNFxAJSkFI.pBRBpygJDmCRAJ7o5ptduLS0fXDc.5lyIQHMk.qMaRx6w0TEH
 lbLDPH5w1CLoRZcP3ULnC9CX467vXXu2MW8EAWA3SWtoFVQ4OIgmTamb3BjrBr.as18i.bdvkaAR
 rFoZQCAsYqN5cdQCZcqRaBXNTb5qPrY0wFRryySBZHfPlaIDfqABpQfBrXBzYOwCfl.bWAfUDeBf
 NllAV52Z8ho5ldv_2ryjv0o1xbqTJhiGHZMgvAq7JQYKdkSs5RfPHgud7XSnDO3t_r4frnhpor4D
 fxKUzZm.peH53ewqb8lnVitKz650BnSU1Bdump2XP5RsXru9hkWcTvnErhT7z_LvWl02sWbfaWY3
 qjg9ghLcTG1ol9_qPD09_ucTo5SSQX0OCaVyorNRRxy.ACTzRjQnaC8D70A5bjGv1NdMevG1lhQC
 XnForKwUTu_u4d_FuxuljjZcIWAPH5DKaRDvW.MgfAAI4eCiY50QkJKgzeX_vgZkalgSr9RQeEvS
 kgwzID4REDgYlakcPhU3ywPC8imK5M3_mpKbVo2eGC.m0ua0_EZr9iutKFQqmyTav74jlYpHYUqF
 3XonI8NHnvWS5ziEPxS1H4DlkHEJZRvDqU2B.im9kVhTMr_Umca8UcToCX7OgqozOlkmTVjhbVc7
 k_nY4FBfk1Aphlsmpl4PVgfmp.0V78Jrr5AShQR6fnItkGW4umoWosFtlweo7PDaYyP.rUI5lf8l
 Ao2El7YZK4UohheGj.CQyWwStV2VdJYhxifXkXxCmQmQ1AxgXnZ5d3.NDR1u3ra4.k.VZ3MarB6U
 OH3TMwXnQ1kfAUdIa73QsNwVFRhlxc6Ri2P2in6QkHyGdx.p9mQPdLtoeJEJlfQPw_fNsU2NEza.
 7E2R4M4T_6FO8Vctp.YyZImgv_07FDonqAYI1ujZo9Em3nB7gNKhJ3jVDlWg0jEePDzQ6LNjSRss
 yqquxvvHjSIE1knNm4m1ZX7rbE06jDx.7Vuyoz12F.h4NDQxXfTSf5DOQLALmEv3jtzb4_lN8sgC
 5ktnyyZNTP0F4h1NZha8kCOBCBohr1.RPtzMRbnx8LUNBueDVBlyJ4BoEeFJeLa3x1DQCeN08.hT
 iUMDu.ACpd8sJYk5dY6Zi4I3PCxHArIXhs8l0upRNhvlhYlIUEmFODlla8fek_0idluj.IdNrxJh
 ScLAftdj8mSFmKratd7nLZcHN4Lngay.97sumFAM38w--
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Fri, 12 Aug 2022 16:50:20 +0000
Date: Fri, 12 Aug 2022 16:50:20 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1206884163.524656.1660323020594@mail.yahoo.com>
In-Reply-To: <7a946105-afca-2626-a3f0-d02c163f185c@gmail.com>
References: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com> <2138502946.461336.1660308543302@mail.yahoo.com> <7a946105-afca-2626-a3f0-d02c163f185c@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20531 YMailNorrin
Message-ID-Hash: V2UWLKJ5RPDT6475EJMTRZ2DKV4VJLG6
X-Message-ID-Hash: V2UWLKJ5RPDT6475EJMTRZ2DKV4VJLG6
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power gain control in USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V2UWLKJ5RPDT6475EJMTRZ2DKV4VJLG6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3859948169519684155=="

--===============3859948169519684155==
Content-Type: multipart/alternative;
	boundary="----=_Part_524655_1630659906.1660323020593"

------=_Part_524655_1630659906.1660323020593
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks for your confirmation, Marcus.


    On Friday, 12 August 2022 at 14:25:49 BST, Marcus D. Leech <patchvonbra=
un@gmail.com> wrote: =20
=20
  On 2022-08-12 08:49, zhou via USRP-users wrote:
 =20
=20
 Hi,=20
  I have general question on power control in USRPs. I know the gain range =
is from 0dB - 30dB. How is gain control realized, by using active amplifier=
 or adjusting passive attenuators? =C2=A0 Thanks, Hongwei=20
 =20
  RF gain control is nearly *ALWAYS* through variable attenuators, and in U=
SRPs, it's no different.
=20
 You can adjust the gain a little on RF amplifiers by playing with bias vol=
tages, but doing so nearly always
 =C2=A0 results in other important properties (like linearity and noise fig=
ure) being negatively affected.=C2=A0 So, you
 =C2=A0 optimize the bias to achieve a balance of "good" properties, and th=
en use a variable attenuator if you
 =C2=A0 need variable gain.
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_524655_1630659906.1660323020593
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp5223c94dyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Thanks for your confirmation, Marcus.</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div><br></div>
        
        </div><div id="ydp87726e1ayahoo_quoted_1167207937" class="ydp87726e1ayahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Friday, 12 August 2022 at 14:25:49 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydp87726e1ayiv6623494906"><div id="ydp87726e1ayiv6623494906yqt27443" class="ydp87726e1ayiv6623494906yqt6565027644"><div>
    <div class="ydp87726e1ayiv6623494906moz-cite-prefix">On 2022-08-12 08:49, zhou via
      USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" class="ydp87726e1ayiv6623494906ydpce9dfed5yahoo-style-wrap">
        <div dir="ltr">Hi,</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">I have general question on
          power control in USRPs. I know the gain range is from 0dB -
          30dB. How is gain control realized, by using active amplifier
          or adjusting passive attenuators?</div>
        <div dir="ltr">&nbsp;</div>
        <div dir="ltr">Thanks,</div>
        <div dir="ltr">Hongwei</div>
        <div dir="ltr"><br clear="none">
        </div>
        <br clear="none">
      </div>
    
    RF gain control is nearly *ALWAYS* through variable attenuators, and
    in USRPs, it's no different.<br clear="none">
    <br clear="none">
    You can adjust the gain a little on RF amplifiers by playing with
    bias voltages, but doing so nearly always<br clear="none">
    &nbsp; results in other important properties (like linearity and noise
    figure) being negatively affected.&nbsp; So, you<br clear="none">
    &nbsp; optimize the bias to achieve a balance of "good" properties, and
    then use a variable attenuator if you<br clear="none">
    &nbsp; need variable gain.<br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div><div class="ydp87726e1ayqt6565027644" id="ydp87726e1ayqt56809">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" href="mailto:usrp-users@lists.ettus.com" rel="nofollow" target="_blank">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" href="mailto:usrp-users-leave@lists.ettus.com" rel="nofollow" target="_blank">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_524655_1630659906.1660323020593--

--===============3859948169519684155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3859948169519684155==--
