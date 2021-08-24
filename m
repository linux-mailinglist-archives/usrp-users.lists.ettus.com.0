Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 458263F61D4
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 17:40:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 958D838457E
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 11:40:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="NSKPnZoe";
	dkim-atps=neutral
Received: from sonic311-14.consmr.mail.bf2.yahoo.com (sonic311-14.consmr.mail.bf2.yahoo.com [74.6.131.124])
	by mm2.emwd.com (Postfix) with ESMTPS id CEABF38417F
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 11:39:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629819593; bh=JDTS9JiMPk4UGgRfKAAp+tQ7AL7IVtfcGVqDCU9e5s8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=NSKPnZoevqEnvHhsHVsc+gofUV95uwQJ/iu7JrHx/dUt+AdlHmTCCiRFgHbUPHnNZE9ThPE20Fwj14KENev0v1dOIzbUz1Zpw3KzPRGSOJpXIsqpMHX/AHsaLi13Et+b7uWT0/p/++J1+kR6IAeZBP8kb8vr+2+LyX1o6ytgVSvfplr56IEXD6KgppSOg4xmAo+qjoUisUg1D9bDO4xAJXb22BVEQ57lim7LI+iogyuOrDNJ/yG9SBlYcxOIr81f5iUaplAqewAmxloH4oiZ6nVdD5vw7bWgQfgg7Zszz4yS+ihzOdWR2ZzKeuGBNHtj3382V2b5u8hSLdmf/GzSuQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629819593; bh=7vMnb6ZeVOn3h6BH55OCR+dcts2aEGIZnAbnAX0LUc3=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=RowFI0zm4wnzP5WwlHaoabT1NfWt22+pdixk6jPA2HovPjUhc1SpDoMEckmFyh9tKRNjmI/ksIAT7fzYqfD6ABn0oL8Iac2MPh56og9J4V2NyqeF0jVXF1fq9/6t2cH2+1DVoHH22BK2mfpH/zZLh2i9gAfpJbQY8o2HCRxM5uLp0zZr8uxipQxT/NgLT1W9IjbCMAbGfT5FwXT3V/+Qgs34Ec5HOLrsr6zr714N9V3hNW6lgHb3r6eyZMY4dF/lFTzUVA6CE2J43sjgLfzuVdCjIvnak27KvcJAk/JmX77YioNv/FemJ8nn70Pi4rsi4EvrLqktKF81FJn4ZqMA9w==
X-YMail-OSG: ZMEIsrkVM1mHbVn64vn1FFDJXwTxNo2WGr7FGVjxccO2kaPUKvWW73WTP.On.qy
 8oL8MTqmee.lgI0TD8JONg_BjTQ0k1P9Gcd.2Z259PxrkA1SzrD76mS8ggOh58fKPEOatGHQpykW
 9dcyVWbEiomCVCtmLXo2mWEZLhsb0f.vRNF3S5iXxt.oPQ32WFg9qKL4hmtd7nsUN233YdZ6iazx
 juV4UA.OkfsGrV7XlxxZyFszfkv_UhneAhV.JFaX_N6ie9fdbmg0H0Dpc5b5T0oeLbMoeKOKTYDm
 nHFgyO3NOvvPKYZewJLfX.w5KJjZoHKwbgJ9X8MoG.UsAOEZ8Fxt.CYyWssMULVbicE0m2dx.Zqq
 TAl8fnqFVYdpiVS_hqKLmMKAu9q1USjtlkh8O.AtOYrnH6g.YeU7UV.ojfa3CG9lfeqo6TE3gH9U
 khum3ozRNeWhv2HCQARIFGTilvQq91iRlFBYhZnvvRbFVC2R4qf9gZPshb10BeCXzX8h5.5dEWHo
 WGyMZ00NLobKHSGlblJyTJWSA0k3wnMEWZcNluukQpLsKIetPhY5CkMeyYaI.kpYz3GXbPgs1rfc
 AVOXAZFTLUuJsij7aB_qw2yKz78KkLt5C7nxtZ00YgyHcdWMbpziRvS.VPwfmiMJWkQTu5HxlZgS
 lzXLcmqEvRYxBurKgzP_ztxIr2xjt532tzY65IkM4T_EgSaIUf_cozPFCZXyfLB.OfIDaKO3cr0O
 M.a9xh85RtSUoaomkw72_K04GEzR2acxxGROQ_xMpOl6lxAclTFpvlxKfQ6LW3VSrB9FvHqGV1Bm
 tsEhZcuE5C71NwIBqEMqYPhdqka.RULDu5lswNcXowpTjQJJl4rdK7zCg2pRA7tDvHn0c9ecRM.B
 uwujnEgtLQawW9dovO45hYh7L0tGUGiam8ZBYhIUy5b1tUFzRGYUKaExtDSBlCx8FfgsBXURQVlb
 UKPaZaOGUzza2Z3ZMRFrdu60Ob63cE7NbfoYb5eL0ICBBjYASkYup1WBiHo6sT5o2iwzo0N9zLuA
 EjB8EpEattt71AHoMOV3.ZHScX9o1Qt1uTpCyd0GjUNWQ1Wm1VHSejYpqD8PU26aKe0eD2aLC5bM
 P6oDGlJOrzvCL7GfYWLgCJlEv5suENZ5GLTIzAGaKa8uQHvcMdy5_XP0reO7e94ha8d8amRH12lH
 U.zagkfI4_.KVFDCJCkWNRbAHBhbsTpK7rS12JRQhLPept80fJgE8S5bBaCCHzMEx5R9pN02AagJ
 HP98I71_3wocSbLURfcXMq.6PVkityKHzJBcRPizB6OHI3aZyWA7A._f7wQca3kWbTFAqNiWUb3L
 YqxNuI8hFy0aww_XzT1iKeWaQYyGg9n8EVsTte1ZQzZmaFbo3UEyzmHBWzQltl71uikBDkOkN.NF
 Sr1JIMCkKtlCjqqBeDGzFDSnCDp.NiYtYnavsk6SkO9i7HgzTde3KW8DAEna5ckn2SSYzd3krDNV
 IqmyoB55ZcwlwmGGAvfpvFrRC_dFCGKXHXOorS441OmXyYW3EWahmue9WLW7SzDDudmvpvoncgrC
 2t5nfjoRcrDfWRBf803HguNZlVIdUVdOr1ufSuWzLAnblcLXLbVrb0J1hawc8fGP106MiyyqkjXU
 uXajRc33tImF7b.2OI0MMcUrmWxZ_LjUXinufJ8rVae79DHyWLPY9oQA2uEsxHFQdIHCcI_exaei
 ghho2VZ1cKzUYWiAZK0IcspP82yFRa3hyzP5Y.ESrEwvOD_eSguy.pYHrvB9ENjDYCoZkeITnKDv
 HX8LylUOnwDE_hE6Aq7fEuRt8DRP26vE3btmT4RtxTG0WzaaxJSueX624WVeu5qDtfJpVVRybV5Y
 CfA2gtlhLS6doC_X7_UnoUzWEYuNpLBSkskihjd__1kDZdkaXYxk5sZ0G1wJXNVxfuzfGDJTWjN9
 Ho016MKuwhLRvHmCK1dit.U6U.fKlT_pqSQNr31f6G9qEoRD4aBsGK64HUnbKZIIVwEVx1fqLhP_
 A_B7dNBBshTsaUWFT0HgZIhsno7TkSs6pE.IyVhUYBg6nTSEW5CayKbV6QIjj8ZVsKMolVelMD1O
 2Nvvg9Ruk0JSX6MEg8826aYU2OOb2PKJTgUv_61e_JCxnxAsPNGTQqlgC8XOInZKGbY_hMSUK2wa
 PDab8Zx41YwAA8GUVAqqavorhwor9IZBBZBi0C_Fd35OA74RzdM3v97Eac9c.OL8Y44LEcUugrKT
 7ytymTb3b9rs1ACaR4EKVfpBi4h_.dS1fNX34hp.g3WhyrHSX18Uh.y0DM1QkDcGBVZB_F.ZKMQ7
 .aH3I0erpwUadWBzh1sRFQam2
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Tue, 24 Aug 2021 15:39:53 +0000
Date: Tue, 24 Aug 2021 15:39:48 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1800716940.152466.1629819588887@mail.yahoo.com>
In-Reply-To: <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com> <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: D4ETMDMTCEDVS5KCP7L6BSKGIUASBTEQ
X-Message-ID-Hash: D4ETMDMTCEDVS5KCP7L6BSKGIUASBTEQ
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4ETMDMTCEDVS5KCP7L6BSKGIUASBTEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4167766960573483992=="

--===============4167766960573483992==
Content-Type: multipart/alternative;
	boundary="----=_Part_152465_1806505854.1629819588885"

------=_Part_152465_1806505854.1629819588885
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 The following step under "SDK Usage" 
$ . $SDKPATH/environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi

doesn't seem to be working for me. I'm assuming $SDKPATH is the path used for installation since I haven't seen this discussed anywhere else in the directions. I get the following printout. 

tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ . usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi
bash: usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi: No such file or directory




    On Tuesday, August 24, 2021, 10:55:02 AM EDT, Marcus D. Leech <patchvonbraun@gmail.com> wrote:  
 
  On 2021-08-24 10:47 a.m., Tellrell White via USRP-users wrote:
  
 
 I'm trying to run the rfnoc replay samples from file example on the N310. I have updated the file system on the sd card to UHD 4.0 successfully. Are their instructions on a cross-compiler to use on my host machine in order to compile the .cpp code for the example and run it on the n310? 
  
   
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild
 
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
  
------=_Part_152465_1806505854.1629819588885
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp829e9487yahoo-style-wrap" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;"><div></div>
        <div dir="ltr" data-setdir="false">The following step under "SDK Usage" <br></div><div dir="ltr" data-setdir="false"><span><pre class="ydp989e7542fragment">$ . $SDKPATH/environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi<br><br>doesn't seem to be working for me. I'm assuming $SDKPATH is the path used for installation since I haven't seen this discussed anywhere else in the directions. I get the following printout. <br><br><div>tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ . usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi<br>bash: usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi: No such file or directory<br><br></div><br></pre></span><div><br></div></div><div><br></div>
        
        </div><div id="yahoo_quoted_0353889385" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, August 24, 2021, 10:55:02 AM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv4475544250"><div class="yiv4475544250yqt9299571934" id="yiv4475544250yqt92206"><div>
    <div class="yiv4475544250moz-cite-prefix">On 2021-08-24 10:47 a.m., Tellrell
      White via USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div><div><div class="yiv4475544250yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">I'm trying to run the rfnoc
          replay samples from file example on the N310. I have updated
          the file system on the sd card to UHD 4.0 successfully. Are
          their instructions on a cross-compiler to use on my host
          machine in order to compile the .cpp code for the example and
          run it on the n310?</div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr"><br clear="none">
        </div>
      </div>
      <br clear="none">
      <fieldset class="yiv4475544250mimeAttachmentHeader"></fieldset>
      <pre class="yiv4475544250moz-quote-pre">_______________________________________________
USRP-users mailing list -- <a rel="nofollow noopener noreferrer" shape="rect" class="yiv4475544250moz-txt-link-abbreviated" ymailto="mailto:usrp-users@lists.ettus.com" target="_blank" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a rel="nofollow noopener noreferrer" shape="rect" class="yiv4475544250moz-txt-link-abbreviated" ymailto="mailto:usrp-users-leave@lists.ettus.com" target="_blank" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    
    <a rel="nofollow noopener noreferrer" shape="rect" class="yiv4475544250moz-txt-link-freetext" target="_blank" href="https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild">https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild</a><br clear="none">
    <br clear="none">
  </div></div></div><div class="yqt9299571934" id="yqt68638">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" ymailto="mailto:usrp-users@lists.ettus.com" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" ymailto="mailto:usrp-users-leave@lists.ettus.com" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_152465_1806505854.1629819588885--

--===============4167766960573483992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4167766960573483992==--
