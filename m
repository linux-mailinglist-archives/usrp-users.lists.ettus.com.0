Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A0A135BAE
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 15:49:55 +0100 (CET)
Received: from [::1] (port=47588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipZ89-0000UU-Vy; Thu, 09 Jan 2020 09:49:50 -0500
Received: from sonic309-20.consmr.mail.ne1.yahoo.com ([66.163.184.146]:43297)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipZ87-0000L1-71
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 09:49:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578581345; bh=btsbzuxNJlXlD+4AK5iegMIKNo90ls+g9u1f40EhGak=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=FCI9wen8xYG2hcYn2Eq/Qb+um5Xa975WWJBrmtOOIsup+HMc9gdC2xebV169dinjKJo/581SWcsSpYiaYXMUIq/oUN73RrK8KC6iEdot7mwJyQw6gH1M5phBGfptATiyQXimvTbfY+fOikghtI6aX623qItFHLjqdlm7/NAHdkOoznJtOZul6GTi/gtLMEx7ueRVALDOqx4NOfwpn+8q0F3bPQuXOphwvMSWvnDD+vVy2rLl3DsLBJQ9cMW7T31tCO11G9PV1sy2pDpY9VSKCGWZaBhJcF0lsYXVMsSWQ1Ps+1qEx1wLQZjeqdVy7oaQBD/BIMrxx+Rkig0UURfM/g==
X-YMail-OSG: cVK7lwgVM1nxvXpZgcGvJ8QiqCAMPnKnyiLC2uJ6RhVwLpECtYhC.NEFzUtJCK8
 izDrsWeDjERauQ9TsJE4PpO4rRRbMXNb9J9hkxFXWpOw1oTjQkYB67TtEs4txVaf3Rh3cQpMveCt
 Ty3ZCnsyB1UeX0CerJUmTWstRNSfkiB3QZZ9A4Ivv6uvUceo1coMs_uGya5.NzdGBqYtkyTmmU6l
 1zSsv8sktSBoaVTJvpfbDTkkLq8.TDbxMc_54J78fW5zFr29YWgW3ituUH5UK4NILggrSiMegQWd
 shdNU8lYcwkvAnbqPP_9B1AeX6fE0Ql_JJ12rEE8K4gGtAVsiWxyeihSIw2aBEEgVIs1TU1OO.n9
 0MsnIRZ5RE4gLww5HYaBz4AzvSIZnVo5fWsxkgT3vD9Nhw2Rzn67Km1iHZ9aC64IhG7cLxa2V_oe
 UTEMQYpKMHRQXibEHfruKNY.33nI0Y0uG9ZKpWOxc627xFMNVdK9Qn6YeMBleOpAnemuLPEV625F
 Pd0ynb_g0tXxF7AvIXYYvJY3bolIjLo8rXjRsoeKHP4yvLM.oKpyasVHnaUWFPhW6_bvBgvwORtU
 lQNQiIfOpU3HzhVh.12uUqadNRzUVmfUyGt7HHACxeUAYIY_9theayc5GjH0kxgr799g0HpC.8X_
 NSN.7GPZ6uOhr5X.EUPdZ1V2bCPMPWKXjaL8.vPMIxN1Fv6qgQwDjpB3lXEb91nBiFYnmD.lDHUr
 _MVfIkPLaPwRip_utazQmRghrHBVR3uJcyD.1OT_SEzamGNtdkcKGp2eA4J3HvzBzAHqm73uBh_M
 _DbLKww2C6IJgscFdpdeLZPK6b8anG1YDepxWDMcAVV50WREy_0ojaphuVnwJEtEY7fd6fnIZ67m
 oSGBcPOIb3xautABvvLXnzjg1e7hW5VTHaujiNhTdcBz5.7xrmKRh7ETi0Oy1ylIQnHd0N0LK0.O
 PwH1wY6hrmm5p5YlP20OHB9q6DVdwPxhWOOHMSg4YGfiYER3OiO8U3NiIkKmi1yv2bbWRYWx3uXk
 3vOLmj7ShlWeWpTORh0yJFrwQNxOO4UZ8g4vyGbJ.aGc.nXXQ6qkFAQHFmkI.ahzNfvlpjPJxqpl
 U_XAsJ3LymILpDRVMK3m25lKVtq9Kn8u0t2qLAWvMlFEFlfG4k_Iq45TfLstXyXyXB3KTXvtz4Uq
 rYGk9FXEOSBO0m_GyXuNrU8yS81wcus1gK93jBKploeqi7Oko0Ye999tIrBQ31LTUERUbhZwX3dR
 VhkfX6dVoXHgs8KiVIU.aMziC48X0lrHHwJjPF4WOm3JMHJuec8KFdWdwE0nDVvlv8FsTuEKUhLC
 4U.vfz4rji8b2Oc54f_N4ChtIPTDqHtkH88rYvA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Thu, 9 Jan 2020 14:49:05 +0000
Date: Thu, 9 Jan 2020 14:49:04 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <373709061.9116148.1578581344482@mail.yahoo.com>
In-Reply-To: <5E163FC9.4000802@gmail.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
 <900064020.8665629.1578507448504@mail.yahoo.com> <5E163E65.70104@gmail.com>
 <1693583403.8730630.1578516321483@mail.yahoo.com>
 <5E163FC9.4000802@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88
 Safari/537.36
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
Content-Type: multipart/mixed; boundary="===============0332661018898848775=="
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

--===============0332661018898848775==
Content-Type: multipart/alternative; 
	boundary="----=_Part_9116147_866706878.1578581344481"
Content-Length: 3298

------=_Part_9116147_866706878.1578581344481
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,=C2=A0 =C2=A0Build is failing for 3.14.1.1 and the reason is tha=
t "uhd_dpdk.c" is written in C99 mode.BR,Santosh
    On Wednesday, January 8, 2020, 08:47:07 PM GMT, Marcus D. Leech <patchv=
onbraun@gmail.com> wrote: =20
=20
  On 01/08/2020 03:45 PM, voonna santosh wrote:
 =20
  Hi Marcus, =C2=A0 Which version would you suggest? Also can you please co=
nfirm whether it would work on 3.10.1.0 ? BR, Santosh
 =20
  =20
=20
 It should work, but my recollection is that there are issues with TX for X=
300 that have been fixed since 3.10.1.0.
=20
 Something recent, like 3.14.1.1=C2=A0 should be tried.
=20
=20
  =20
------=_Part_9116147_866706878.1578581344481
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpaab9d6c7yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi Marcus,</div><div dir="ltr" data-setdir="false">&nbsp; &nbsp;Build is failing for 3.14.1.1 and the reason is that "uhd_dpdk.c" is written in C99 mode.</div><div dir="ltr" data-setdir="false">BR,</div><div dir="ltr" data-setdir="false">Santosh</div><div><br></div>
        
        </div><div id="yahoo_quoted_9183161140" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Wednesday, January 8, 2020, 08:47:07 PM GMT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv0516350217"><div>
    <div class="yiv0516350217yqt1622953141" id="yiv0516350217yqtfd80784"><div class="yiv0516350217moz-cite-prefix">On 01/08/2020 03:45 PM, voonna santosh
      wrote:<br clear="none">
    </div>
    </div><blockquote type="cite"><div class="yiv0516350217yqt1622953141" id="yiv0516350217yqtfd46840">
      </div><div class="yiv0516350217ydp27ebd4ceyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div class="yiv0516350217yqt1622953141" id="yiv0516350217yqtfd62190">
        <div dir="ltr">Hi Marcus,</div>
        <div dir="ltr">&nbsp; Which version would you
          suggest? Also can you please confirm whether it would work on
          3.10.1.0 ?</div>
        <div dir="ltr">BR,</div>
        </div><div dir="ltr"><div class="yiv0516350217yqt1622953141" id="yiv0516350217yqtfd81969">Santosh</div><br clear="none">
        </div>
        <div><br clear="none">
        </div>
      </div>
      <br clear="none">
    </blockquote>
    It should work, but my recollection is that there are issues with TX
    for X300 that have been fixed since 3.10.1.0.<br clear="none">
    <br clear="none">
    Something recent, like 3.14.1.1&nbsp; should be tried.<div class="yiv0516350217yqt1622953141" id="yiv0516350217yqtfd34950"><br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_9116147_866706878.1578581344481--


--===============0332661018898848775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0332661018898848775==--

