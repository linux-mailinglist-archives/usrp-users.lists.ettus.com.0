Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C1C15BBEB
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2020 10:43:41 +0100 (CET)
Received: from [::1] (port=57224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2B1y-0003pb-O6; Thu, 13 Feb 2020 04:43:34 -0500
Received: from sonic303-20.consmr.mail.ne1.yahoo.com ([66.163.188.146]:34239)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1j2B1v-0003m3-NX
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 04:43:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1581586970; bh=xkrA/W2Gtrrbr0MO/Qm1P/MWLPcQj6vqGW3KZzP33tk=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=tnK8UFmnWrrMXA4rC+jL4gAe5Z58x8Z+bfiwUQhOi2p3A8eLwHK1dzPEG9lXEvoTcQ69I7yidE5Rg0LECl7ObxzHNpDxZuGTpwIMiKfS33Wsq+WWu3nvCz0HTSvAwirNS9BMhEFbwuWNo+H3rDA9N8cTH8thrU/mKvOsMhBMSnG6sHl+pDpILwFdrM0TkSYSCSHAENGlBOZZgZ5iungY6/zLJBWPptJ9PC9xJtABFdyeIugMCv2MmLKjNTxlS6BoCVf2K17SJLSteCzIZGQaE+NX/X3V0nJpTpd6AuNdCnlRTJg6XqU9RioJC82f6waO4oUyYgtr16Xexc2ihKfeEg==
X-YMail-OSG: CzJ0XKIVM1nLQjj7OSZ7jcO2ZfhsBomkg3W7jm0cuv5otp.Eqt_MuRv8nqv2nXN
 GCWcR9aQalpaNH9.KqI9ng6nGudS5qnhVdXpCstWrPz8UobtNQlOedJvPpZjShXaLwEPnY4n8N.a
 HzY4yGzqOuNBIC.UVSymozBuFg3YzOdml3DyqAWNobb1cNn59aFnt0Mkvnrm0w6PvwieRLG1Zvt1
 mU1_xijY2UOseX67rwJLpu9Z3ZLGyxlmITdh9mXC1jTo4Qza0JmYEhLOPCzUqcQX3Z4gceyF49X0
 vewYQm8F_w4fljQPJ22QZxKqUTv9_PRc_.R5BO5O3Cogr51Iyt7Y.gbwTgYGyp4pP3N6B_nP1srh
 VXHIgUAIrPSYKIiR9NDXmWKpoy9hfFFTS3gEvEL5_prCd.eUGs_sm_.nhZTnhurnvU_sDsIuwCWB
 CPs6IVapEEAsCiRE9341eHiQGZAnDfFN5J7CDLBSxfanSOwUT1tnv4E_tr9Kd8gxcOHozLgQwyH1
 QB5nzeUa_tswMlaO16OXpp5ZwMkWzSGQ.uCX3R.LwasiMkrHvdmfh5Y1UwvI4cfgfpwsRusDIt.Y
 BICnxu7WJdkWbDnkK8pPOezm.7ixSVjIsTqavXpLyO49baPsM27ia0V46PVLwI3TF8OrTxRt9cOG
 teqbe.L9EVKb.WYYUxHJ6ld1NR6.58te0I0R5fcvl8ijc4Wwhoidcwkkw2hR7WxYut8pP9D.QDq5
 QDzI4qTHakTUyootl3u0cqPkaOIW6qPabgHkPse53FMtNMoIJLWGjwqf30zgN_RaffNGGQEOwPW0
 ZYH2z2bDNQERqnCvzLS8sYhd8ccwBRU8NJLkTlsDle2x0trsOxYQSP7tmBhVC9A9nLlgfb.rmoeh
 rEuhkaEZT9YTuCAgKPA.XTz.WavgA5iz.a8kuG8ULn2S5sqCuNe9UNrzI9NZmxIY561pRTBU4dfT
 ALRN4hKk8BwqLFbon5vMUFjVm0rSz9wESXNXtGoIMakeQuta7zn1dK8p4kKGY6Jf4Oo9j675_Tqg
 UXIYbb9nGygsoUavri1tRn_UbOq1T2h9ZfLWtUDJk2wEyinSx_xs47iVbczHJ.ZJYk2aw7slWOu_
 HfA7upFDO1GrwPAVxUiwUhEq7m76eYcNrP2PUSZEL1CNMl2w2qInSCGBlk.9q4C2iopgkSYqyEl0
 os6tYXUSZebZpQFWxVT45qGNVPrk0pvgnsE3mttUu84cENNaglMw3368.J7zqEX9IzhgLxJDAp4E
 R32WawBJ6H740B0WnGYbwB1yFPfhNbhTngW3ZNlDp5PST5nYUJAul2_7YMH6GZngjv_y2Y0VnUl6
 2.NKJy9TZwcQXVnwFgHA4XQB5
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ne1.yahoo.com with HTTP; Thu, 13 Feb 2020 09:42:50 +0000
Date: Thu, 13 Feb 2020 09:42:48 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <151327143.2412159.1581586968416@mail.yahoo.com>
In-Reply-To: <86368074.393649.1581004383613@mail.yahoo.com>
References: <86368074.393649.1581004383613.ref@mail.yahoo.com>
 <86368074.393649.1581004383613@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.15199 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100
 Safari/537.36
Subject: Re: [USRP-users] Getting time from USRP X300
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
Content-Type: multipart/mixed; boundary="===============2902301163062590855=="
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

--===============2902301163062590855==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2412158_1916946612.1581586968415"
Content-Length: 2743

------=_Part_2412158_1916946612.1581586968415
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi There,=C2=A0 =C2=A0Will you be able to help me to resolve this?BR,Santo=
sh
    On Thursday, February 6, 2020, 03:53:03 PM GMT, voonna santosh <santu_v=
oonna@yahoo.com> wrote: =20
=20
 Hi There,=C2=A0 =C2=A0I would like to connect external GPS antenna to X300=
 and get the time once GPS is locked. Can you please throw pointers on foll=
owing things:  =20
   - Does X300 support specific GPS antennas? If so can you please let me k=
now ?
   - How do I know that X300's GPS is locked? Is there any API to query for=
 GPS lock status?
   - Once GPS is locked what is the API to get the time?=C2=A0
   - Is it possible to use X300 as NTP server? If so how could I achieve it=
?

BR,Santosh =20
------=_Part_2412158_1916946612.1581586968415
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp9a1035a9yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi There,</div><div dir="ltr" data-setdir="false">&nbsp; &nbsp;Will you be able to help me to resolve this?</div><div dir="ltr" data-setdir="false">BR,</div><div dir="ltr" data-setdir="false">Santosh</div><div><br></div>
        
        </div><div id="yahoo_quoted_2073502963" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Thursday, February 6, 2020, 03:53:03 PM GMT, voonna santosh &lt;santu_voonna@yahoo.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv8388366916"><div><div class="yiv8388366916yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr">Hi There,</div><div dir="ltr">&nbsp; &nbsp;I would like to connect external GPS antenna to X300 and get the time once GPS is locked. Can you please throw pointers on following things:</div><div dir="ltr"><ul><li>Does X300 support specific GPS antennas? If so can you please let me know ?</li><li>How do I know that X300's GPS is locked? Is there any API to query for GPS lock status?</li><li>Once GPS is locked what is the API to get the time?&nbsp;</li><li>Is it possible to use X300 as NTP server? If so how could I achieve it?</li></ul></div><div dir="ltr"><br></div><div dir="ltr">BR,</div><div dir="ltr">Santosh</div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_2412158_1916946612.1581586968415--


--===============2902301163062590855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2902301163062590855==--

