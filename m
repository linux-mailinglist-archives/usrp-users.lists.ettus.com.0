Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C60D42478A
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 21:53:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2DE73847FF
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 15:53:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="VXGwCWFV";
	dkim-atps=neutral
Received: from sonic310-14.consmr.mail.bf2.yahoo.com (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 23612384277
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 15:52:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1633549975; bh=AALxXmWfkhR6va8qW8GYpTAOxjkKbfKBE//nDp59lsw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=VXGwCWFVgEZIIRxD3Hl2VqS/OiCNW8bo8lkYo6JW6K4bHKpTfBIoLqNg1isVJFkZzZ4cBA7EasOI2XjFDDmtVJ/oUKZeMeXTIn/wiATFfzP7I4aL3oztbSpNjj1gpqsk1/VTnee1DnzLIdid51DMdEmdvbRPquyfzlEs5YH6IHCdpR8710BUtW5Pr1iDdNfYO9rFdZU5pGc4MVV8K2Iju1+RD9QNJeMD8Qwyw/wvCy3HZw8Q+clQJH1rs5iTJQmbOZr+w5ajbrmS14rpaDHtL8xVaVNyP2fJ5ZUKbDpB+CL7rtI+59EWSu38WNNaqhnB/0jf/clW7rjVqSpIZs4aJQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1633549975; bh=TJfDrp9DvYOx1GMb44BQnIo88mN5fjW2IeejsWu7Rh5=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=eVqCZ0a9kjIDJY2FbtfVPhFvQUrzmdGDlkwiWySxuG9k/Ih/zCTEX7kXMtwnHMRFNT4Ap0qju4/RJY0/BAzPSPNn15Z9/SkdGSeRkUwSigK0T96q5aNXTTowprg7IBqegDRxOV5T2risgpPHXjsQgjQJUFhS65fkdEoLsRfQaV1hw9yrdEZ/E8fOPP/tdA1DqsASuk3RG6MWm1+HVk4zajT35aYH6x0xmRAbl+cOOAiEnC+GPbOjT5JpH+XL5VA4AStmx3i+vsrE2PQOoF7CdN6ty4Rny2nRwe4NYXiL7Z4ybSRCngbSluIVdbe4yIpImo+y15PMig/3nPLUcXLdUA==
X-YMail-OSG: aZBTgNEVM1nMvH1yPeAVHohBAot9X19wrKWgSjTcY5tx2gFd30go5dBtBMpRDCS
 BkinIgsvi2Fk.kIfWohrXNy.E2yjaqbEjuDb1_kcVKbKcKp.uyi_IFksjymoDcdRSZLWbRlnD266
 2Q9nl95Ol.aEe0JbmOwQai6CeXOiwEsVE8FJ0BqW0NJrve7c3_xHQJNJlmaS.M5WwrBs.49YgNE9
 wKs3pnvqM.SKRz2B9yAMjbjqMutPR4fG7Ih4Ujh6pmpSkHCLQqs3DKYsx48EeBxBsHWM8xviWZte
 6VolH_rPy_YP8Z2H.GM8yNlJZ0LHvvwdGmeKbqt3ZTjaUVxhtai4QT6B.iUy6Xd2jytFU8c5VZ8i
 OWxJqGtCXFRwyH38QVW_WxjNRv6PsrzxPAcsYLctbL8zRd7FIet4M0qLtrHHMTBI9e3fIDOGT0I_
 rpOzZMVo178JthZGS2R6Hxr45LnlWBnz6nfwkH3e7x1F.J4KFoyo5Uc1Sg1hreaq.2XUW3tJAR_m
 5muryUVsjeM5B1N6.UxwZLoE6FxJn0BVHWnXkusHk5aVemiIrbLcQ1Jc4v_r5gsPzTfE8AxZ3wyp
 rAyPgKN5qPllWyfLksWdiDTQbowPRBplmkpidtj9oBg_HHT3x_UHl4nKdnRuGtNF1wb5Zi5iTTiv
 0ZMDugH78vUnarzD6nV9sRUsOjL7NXhKfWushTNr2UJu8vbWD.rIQMoGcgVvQORtkq7ergVpFprT
 MhF6qg4LJ42kg0rRZP6w_qlrjke0VlomnTDUJsu7aj3RaB66Cgcl_E7YNoM9FVs68y91YpigRMnp
 UxjEgjI7hTgNF9vcl3OBEKpkKZvxQO5aUEDMI7pJwXwuZUDZ3kTSJUOKccWe3vUOfOnst1Y.HgGP
 eC4_5XkTvAtlotWPKkqtmS_1GkuVvN_bLjoVXxzyJLlwmPwUVdhIdWxFd3fZuo5cRMYhdz76v4Kq
 evTIyCR1PL1x4dot38PT3_jy4Ydv9UoCMB4BFIXrkymg7iB82By.A7.YWxsMRO.iHuVTPmW29pg0
 yHlNsgrxuslUf4_yy64rrOEW7Xuzlql6KYNcdLIAFPW.rzLWUuFyobGGgK0dGLhvZpuH1w4Wgxxj
 YpzFzWBsEdZJRjWp6ErdHwCHU20zeQr56iqTkC_Xcw3tC8u5pIvsys1MhoChqKkybYNO8nqq_ODp
 YumUh_utuUwztj98D2MyAeNoyKg1Rk4uBkVJU4yJlpqacyrXzeBsP48c4x0gNtE.ANta4JUMS.ET
 ZcH4Vam2qB9vaBv8LRV.fljikPDU5WRbyj5jwY7LZ4a3mJSMY93fGsxQBN42X9ecbJ78MAGZ81Za
 qLe7JaLkAiX7Kbv4DHgpE0XwP6_xm2ivYzSnN8l0XCegzNAxHFO4c1cV1pyw.JW7eotipkmnknKz
 UBrQVebVF6HZT4AyMysTZVQ0g0iGQC8wpf5DDTyMaeC9KmZ1c7ox175Kr_1.XSck0rVrnAlsvldg
 7twCiBAkSRKySvcV5RoI9gyIsH.7JSs6UCYJdXmYGLWMUhKhS__sLuXEwhX3eVw67YeQAiFIR9zz
 zYq7XCZlShYw0XieysDT0v8YL4_35JhlinZ7CPL0aEFmYI9tzSFN4suc2M_o0xf6tByFZoyyl6nx
 jVKm5fHKaCRrVbqJlhIEESXx_9dxn1D4Mrde1Rweaa.EYVtIp7xDMJy_M6NP3UQT4CIcD_7tpBwr
 ZYoEFKt9yigaGdAqSrORvkQQV33IjW_B9dkVXbSeuv86fxXN6Kkpz1ssd734aWq7H9bHw.a4CWOj
 PJHKBxweyaT2JAxTiPd8ufV4dBfPSlz8azGNb_qT40vCgq9TuLjGUZS_QAqFiBOlGvw21PjG.Hk9
 BbCC8z047bdPG16z_RFToeWdVqciigmgOOVevJE8RJDlJsGcPpB2AzNHwlnJzYY.G5emt3HM9sSh
 K9f0MHK_FhCuzmk750AkDZWmEGcaPvJnJHBz4Z1JboaegIeakv0T2GaEN70CxnVu2pnLPY5m.X9M
 PTcfE3AhfS6kASHdpAmRuK271ggpYz_VjNo4c0Dv73m5PLcGyD08A96qsgDvkvdjar_IWsJjRHfL
 AvreyGUfuLcElG1UCRdV1H98qKTnYH3PDgOOjehORR6BrLEzW0.6b8K7iJnBB8GtigUOCl.6ZFpC
 tq8fEGzphVwjL16Om9TKlkXtDblG6serE.DCTeEhwArj2CrLBskkK8loBJJVAqA8BK.zDPaZ.2G7
 qfUp4ml5HOB6NKCnQj1BE8qyOOGgtYj8E2HF2Un6ylkActiWvfJ95ERV2t2Aip2phln4edyzDRPu
 ws3QWtrlcGWQuA.Zqp.mVRlQh
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Wed, 6 Oct 2021 19:52:55 +0000
Date: Wed, 6 Oct 2021 19:52:53 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1086779613.13333.1633549973441@mail.yahoo.com>
In-Reply-To: <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com> <1607813094.1558445.1633542971951@mail.yahoo.com> <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19116 YMailNorrin
Message-ID-Hash: R7FZPKP4FBMFAPL657M2L4HNAPSJSXOU
X-Message-ID-Hash: R7FZPKP4FBMFAPL657M2L4HNAPSJSXOU
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R7FZPKP4FBMFAPL657M2L4HNAPSJSXOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3001033326044200933=="

--===============3001033326044200933==
Content-Type: multipart/alternative;
	boundary="----=_Part_13332_473086329.1633549973439"

------=_Part_13332_473086329.1633549973439
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Thanks for the clarification. 

I tried disabling and stopping MPM in order to release the I2C device that I want to read from. However, i'm still getting the same error that I stated above("device or resource is busy"). Is there any way of disabling or stopping MPM ?

    On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus D. Leech <patchvonbraun@gmail.com> wrote:  
 
  On 2021-10-06 1:56 p.m., Tellrell White via USRP-users wrote:
  
 
 Currently, I have an app that I've cross-compiled for the N310 and I'm trying to read data from the I/O Expander(TCA6408a) on the daughterboard, however, I'm getting an error stating that the "device or resource is busy" which leads me to believe that there is a driver already using the device. Does anyone have any insight on this?? Also, is there any information on using I2C for the n3xx devices? 
   
 
 Pretty sure that MPM (part of the UHD environment) "owns" the I2C and SPI interfaces.
 
 
 
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
  
------=_Part_13332_473086329.1633549973439
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp2f1a90e8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Thanks for the clarification. <br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I tried disabling and stopping MPM in order to release the I2C device that I want to read from. However, i'm still getting the same error that I stated above("device or resource is busy"). Is there any way of disabling or stopping MPM ?<br></div><div><br></div>
        
        </div><div id="yahoo_quoted_4091168429" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv1453901263"><div class="yiv1453901263yqt7676288349" id="yiv1453901263yqt14983"><div>
    <div class="yiv1453901263moz-cite-prefix">On 2021-10-06 1:56 p.m., Tellrell White
      via USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div class="yiv1453901263yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">Currently, I have an app that
          I've cross-compiled for the N310 and I'm trying to read data
          from the I/O Expander(TCA6408a) on the daughterboard, however,
          I'm getting an error stating that the "device or resource is
          busy" which leads me to believe that there is a driver already
          using the device. Does anyone have any insight on this?? Also,
          is there any information on using I2C for the n3xx devices? <br clear="none">
        </div>
      </div>
      <br clear="none">
      <br clear="none">
    
    Pretty sure that MPM (part of the UHD environment) "owns" the I2C
    and SPI interfaces.<br clear="none">
    <br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div><div class="yqt7676288349" id="yqt52002">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" ymailto="mailto:usrp-users@lists.ettus.com" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" ymailto="mailto:usrp-users-leave@lists.ettus.com" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_13332_473086329.1633549973439--

--===============3001033326044200933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3001033326044200933==--
