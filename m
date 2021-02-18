Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 734D531EA67
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 14:28:28 +0100 (CET)
Received: from [::1] (port=43560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCjLx-0004uF-VE; Thu, 18 Feb 2021 08:28:21 -0500
Received: from sonic303-21.consmr.mail.ne1.yahoo.com ([66.163.188.147]:43404)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lCjLu-0004qQ-QX
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 08:28:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613654857; bh=/HGAcjs/Knv9x/6D9Vqog5ydNB095r1UKC/pO+sI0Rc=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=TmKSE3Nn6RUp9vp/XI3UgW7AFWKqUBrp0OBFm5YwtQfKDj6BjRO1gRS7cBbsV9h19qUHqt49XEYx+ma1MBZlfn6I2ehQlKj2gadDw2nRBjYX+VcyTLwDgf0+tdZHa++bDasbvgFsAE20ByD6YGSIi1wga/V3lBTXtRKsM4dctwCe2x6KebyW46DxLit+j2tSPrQv6hJq4fvjB/NWrx5pH4bcrh10j3zvWB+Yv0dvYatriteF0q9rWGmxwC8xwdj1G6MdYj5KvihU5UYxJ78x+Hp62K2Ceni4pxb8WXSUfRRiLHF9rqMXqmBXNT5cvDyiCiGDEAjDidfN2OFyW2euWw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613654857; bh=Hp1oOeEn0gkrR7Uy0ynoAR4HGm//DfpRPUcbKxNUDT1=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=pk6gqQUCGreAnXQuEGVMnS/3RQBi/1I35w9SDfi66DULuJdaM2uWlSRbtAuNdXOGeVitrvc35zOeSG59stJlmAThS8DxvX0fNojvdsrPYz3skJsRLikfdeuG77a+Bf/EUOXRRdXo5y8uw2fr9wOiFjprgADlJ0h+laGtIk5h0fUCWTExJeVyb+FLLSYGgrpfUALA8MFYD8K814yFiNlYj3n0BbSaj+hWNGcvdDeZqbznSfZk5AptN2SbPBjaU5QY1jUaETSUmfqf5AC/wL6yEk6sQMdjjpoQNrAE8oGP+eH8N+QISteahOvyLMr8yPSwxfIL5s7XTfqOSs4M7Ej1ZQ==
X-YMail-OSG: v2QY97QVM1kcXhv3stZqm53MfqIlzbE8YrayHuqrJoS4CR3sbNaBHPnYKEM.yb0
 q4.yU0KGgs_9QxZVtsgfwlmZPVIc4Se5pHEu1jwe5fEbT0e.ahHvipVNFtu90PTQh5CLobfkXBIE
 JF9lBj_vXKi1fle.JTso1qnroUxIRu_ewMv1Nu6poAeP6u6paNr.MjEYCQJnTA70AhYArr1EiuN5
 LmFIB4olLOEb4klEz66LlbxupMfhv8Y5zqSeJ_bNwCYCw_sdn76RU9BWoCfUWuqszG9exbudHIVZ
 P1E8XKRRVz.nVr1xh5MSOtfjeXVsnjrTj_GS7jR1ERpo5aY48_0VnTgF1OSW09FUxqXrGdLf_e2K
 gS4vA1TKPgQm5jchtpaiQFoyWPpf2H5JKQkT5AWOVis3TGqILbIWpcJ2rHzqLnPekI5bocN154CK
 iJwghwPzVLnM29D4h5BQ0PlGBftdg.mIDZKHXWTc4X6y4XxQnyXiFhUBFNpTaNEqldfJIfdWCPA7
 TL_U3VE10npXHaWuqnaIJ.XX24iv6aAPh2EoHBUKet.t2XKVw2Evx5p3UJe21er7Bg1tmGacapjz
 sNCOFtPCYF80Zp73uyYYCQcqdpzm293H6yJfRYzw.c5rgkk6eJtHGWEDiwAvjR6eMlrusa6dHySu
 u2AORruB0LPhwliIkqQ227kYyh8dS4vJW6NpfQMlyoX5A36crspnqy3d34f42rnId4DAqoQHpIuM
 1m0IHyxsk6AAvyibK3D6IFcnionVURsHCfyrU1NSfdT4TmkH36cUvVfSJMYbYNi6l_IiCuoNMFZ0
 gfBWMjzcN05YEtV_NP7UgwVyVnpxZ5ypU_7RNfpeB._y3vAVRzbijp_pOrSViEv_sh8dHdy8EAgR
 X9GNp4eihoSnZ6z6f1G7KjYdNAzKr5TCGZSK1ub1AhjppiEFNk.6xs3RbPNkp8zd_3zdBNUAIgs0
 KE.KZTH9jsxz_ZeH6k8AsMfEe8GBRqn2aSvkPrGDPZ7nPJAvxGW5z_1SRoBwh3BpU_5.Yd_C6_s3
 WwSU0I2ZA2oXJAehQ1SAPOLaes2Ie9w8X5Y8Yo7de2Nqj8oYkZx5G38Dtaw.DqKxySdtZSlxsqal
 9M4hV4X9.wX.ZWZI_A5a9W4WH.En6_yaAiJOEGj1ULmz4RZIpz1yRmaI57OC17TW6611ecxVPbrV
 Rp.1P0m.ZYk3u3FVpZd4Dv706h8MiOuBZfpHA7B6jb1XIAja_Rrgsw4jFboUZGN8hBZ2CEqzhm4V
 AyFoFylnBdAErWLaybeLQfTAzHNu.zOfi62iR1Niyl7.3agHY0qjnVm2XFAXEE54KfW2ZHuNthok
 blzZJlDIrJ.HHBWpMYw_OoVYAfjobBqYK7SX0bdSWHmnxpsevvUKcs1cCHT8P2N.vkoe8yJ3paH8
 mgo23zH66f0dKT0W_bvAD1NsBXRUCzMTEFAPuiwfbcc3BikHQk1fhnuP_U17xQc4zx3DMFdz1jzH
 NxWhwo9hbYDm.CPiLRqsnB0yhNOF4yV7oxzMuRM0ok0o2Er85T3BU.cypjPZyvIfz01mR9BlXTSt
 PsA5rfAWVfd3QSkdjmvhDlGQnWgTf0K66cCE.M1vzDanqQKHLk720fvNkb4JrNaPYbPlZrPZJnNe
 IUikwLYfQK42hS8e1Linhju0RAsJmvhPhWWUKdUr51SWcMu5BulQwuQgZrB9sBKf4aXpSqIh2wRt
 1gqhKavt3pq1YoHxVuxKq3ZbuoDjO2BJCunAyoiKD7TQXOYb0CvNhcCmQ8UzYm2a.DLLXzjGxLui
 wRk6DxDEc4O4eDdr.hvCFP04tpbl3bSrFYa0jyV5k5iw31iPDpqsL3BJEl51IqOjJcQOz5YOnYr9
 TSASubZo_J2cCwoI0KCen4p68C_mSBR2fBlBrM0rp3y3QQaE5A37aDaBFnSu723G6uHNe2pwihHU
 s.kx2NHaXR7j5O86yPbXHk6hlL4_01uB.z2BDORT54R4VXVSqguOZBQs2nj78UyiiLxmSCqaWH88
 435r_VmAAuVPGsDRQl9pSPC0TD0dSq0pLKCp01NSH7xDIV0XSiNh.lr9D949YmiH3fjr2aE7PlYw
 UhBAyzAfAfldIPks0YMnYo8Whg5byqpNDMQkg9ckxd6vTLFLesnpL3ya6uW2BXqUd0F596HV9rj9
 t6.Ga2xGixg_kgEyuarwZa_psa4eh1IOGQHvSHgkvz7ZrhIKfxZbVFclgb8DedcIp2pXLo3P0QiW
 Dlqldg9QEa3lc1DfFprt.mwSdkVgEzvTwG0ZIPOA7PIb16UGK4caVtK.a_I1lrqyMbz1279v6T3A
 1fl5OtkcHmxuxPiO2oMAvk1wikVLo_p6zumcoQRL7.Y4o8RVQzrN.T8Qk3l88dCKzCf6RmCvh4Jb
 QpIHs0QexaAOG2eOyniXufYvU2yRVily81MkoTQYR76Wiizxm64hNezwyxQILMvC8k3RXAAYWbkJ
 A1cJHD0n6
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ne1.yahoo.com with HTTP; Thu, 18 Feb 2021 13:27:37 +0000
Received: by smtp401.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID df56350318852e3948072e0ea07d427c; 
 Thu, 18 Feb 2021 13:27:31 +0000 (UTC)
To: usrp-users@lists.ettus.com
References: <1addbb88-269a-0928-1fd3-415daa295a61.ref@verizon.net>
 <1addbb88-269a-0928-1fd3-415daa295a61@verizon.net>
 <CAAg5+MxyvT7GF_=bXpkMeAcRaQ7tLhPeU1aDrAuGFLZGwwuHdQ@mail.gmail.com>
Message-ID: <1e3d0463-06ae-12cd-a603-7ba21f79fe36@verizon.net>
Date: Thu, 18 Feb 2021 08:27:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAg5+MxyvT7GF_=bXpkMeAcRaQ7tLhPeU1aDrAuGFLZGwwuHdQ@mail.gmail.com>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] rfnoc_image_builder error with clock domain
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============4837594309409561970=="
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

This is a multi-part message in MIME format.
--===============4837594309409561970==
Content-Type: multipart/alternative;
 boundary="------------5AF404D91782D8D06D8FF02A"
Content-Language: en-US
Content-Length: 4895

This is a multi-part message in MIME format.
--------------5AF404D91782D8D06D8FF02A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Aaron,

Yes, that is the solution.  I saw that when looking at another YAML file 
in the source folders.  That is a typo in AN-400 that should probably be 
fixed.  In the section describing adding a FFT block to the receive chain:

    clk_domains:
      ...
      # As before, we still connect our FFT block to the clock domain
      - { srcblk: _device_, srcport: ce, dstblk: fft0, dstport: ce }

srcport: ce should be srcport: rfnoc_chdr

It's obvious now but first time through it tripped me up.

Thanks for your help.
Mike

On 2/17/21 8:53 AM, Aaron Rossetto via USRP-users wrote:
> On Tue, Feb 16, 2021 at 10:15 AM Mike via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Any ideas?
>
>
> Try changing the clock domain connection to your FFT block to this:
>   - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: fft0,   
> dstport:ce }
>
> Does that allow rfnoc_image_builder to complete successfully?
>
> Best regards,
> Aaron
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------5AF404D91782D8D06D8FF02A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Aaron,</p>
    <p>Yes, that is the solution.  I saw that when looking at another
      YAML file in the source folders.  That is a typo in AN-400 that
      should probably be fixed.  In the section describing adding a FFT
      block to the receive chain:<br>
    </p>
    <pre>   clk_domains:
     ...
     # As before, we still connect our FFT block to the clock domain
     - { srcblk: _device_, srcport: ce, dstblk: fft0, dstport: ce }
</pre>
    <div class="moz-cite-prefix">srcport: ce should be srcport:
      rfnoc_chdr</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">It's obvious now but first time through
      it tripped me up.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Thanks for your help.</div>
    <div class="moz-cite-prefix">Mike<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 2/17/21 8:53 AM, Aaron Rossetto via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAg5+MxyvT7GF_=bXpkMeAcRaQ7tLhPeU1aDrAuGFLZGwwuHdQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue, Feb 16, 2021 at
            10:15 AM Mike via USRP-users &lt;<a
              href="mailto:usrp-users@lists.ettus.com"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <div> </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Any ideas?</blockquote>
          <div><br>
          </div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default">Try changing the clock domain
            connection to your FFT block to this:</div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default">  - { srcblk: _device_, srcport:
            rfnoc_chdr,    dstblk: fft0,   dstport:ce } <br>
          </div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default"><br>
          </div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default">Does that allow rfnoc_image_builder to
            complete successfully?</div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default"><br>
          </div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default">Best regards,</div>
          <div style="font-family:arial,sans-serif"
            class="gmail_default">Aaron<br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------5AF404D91782D8D06D8FF02A--


--===============4837594309409561970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4837594309409561970==--

