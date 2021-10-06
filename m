Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1634248B8
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 23:18:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1384638495E
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 17:18:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="rvW/9vi3";
	dkim-atps=neutral
Received: from sonic313-14.consmr.mail.bf2.yahoo.com (sonic313-14.consmr.mail.bf2.yahoo.com [74.6.133.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 982243846B2
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 17:17:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1633555056; bh=t4U8HE3uGF2vaTEVQhpPia6dzYHFsBllS8EMbdJLEXw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=rvW/9vi3ZRN6hUg4p/r5OtcnVcoKV0Gg6YqA/B7N+qWelWkASD6iNPnPbz1ybyrCOnMPbYzUDTLEGJtVQUHksRCL607plgbAH80sF22p2gmdyHQmjLTl9+ULK0Fp0kriXQg3p3Tk3yyP3iMeW+VC6P6+M21fsOQ4P6D88evTkbDVFipSbH+quiwUkMyYdxUgjKAOnb1MEfvJz06yGBt58XO2+fd0CIo9j1XHkzWYxaQUf7FL7wxxKvZ8CzFLthjVxDM4mMFDciT9NUHM3PVdRjTW6NILIgxfhOOTMC1RBh2LgdErG+njwURnQ+Hqy3mZ2lWfx1uyc84YCsxE2+WAOA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1633555056; bh=+1qXk/pdrbc/m0GwVuLbumvNTBjAhfKoyVXK+/i3DkL=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=XE/meoUkbqqfbn3ldug/PG35zg5MrzQaFbLyDnA+rqlf6IA5c+jvb6OtAugN6xo+dxjvv4DoIIUET2zWLilDdlq6ufNrH4K8slLbS+A/8aty6ol8CGgeiBPCK7CffLhObaHp5sFA0v20dl7AhO4Hy1MKY3gk8Cp2eyy6/5LAmpu/gDMqep9ntaEM/W/N8Wj3SIul5kM6e8B90qfFIhIZY6cSpwQFR79mmu7hEmfgJNqVeO4WbPWDxLOQ15dAmQ5wzEQU3iQGDqQFdoLU44HSBZMtBZvs9gbxwZi1rwKug0aF87Jj0RhGvVU74DCBJpUxLr94xnQaqGJTUbqKNwjdyQ==
X-YMail-OSG: lZv1ngIVM1k1SqANSnGnO1oGLC.aZ0j1w3rkMCApkMHAepdC0M.6_gEgUwSOTxB
 0SAA5R5wZb0N7UiXPuIJ4fiZatte50yXbkc_6vg1knBkGJlfj1WDyLuauquuI1L3qbcjdY8.mpod
 Z6ADf0hce44FQdypXxW8.mpyrCkatQh4ENMT9pVjT0.WqKL4_tRtiGAnSfty6Z.z8A7STgZhYotc
 yvZbD9nA5sRvRRe3bC7mSYVr.4YFtJhzHR3gxkv.MKtIOlxnYiBM7CR.YFVNLmlQSqEiQHr3U8n5
 o4ji0DISj1h1eaADiC99ZDI8WFiqnzCutefSl1d.i3MM8eYPtBlJmA5.F4k9zUgkOck.vZa7VEvx
 jzXDuuzXpJe40pP0SUHyrAT0g6hpn2m4O2ZEfqnQmzWljxZyZ6lfHmzEjv1CtJ5WNdAnRUfO0I8g
 6LbPcYwJeIf8Nv4mXYXRSChNuk08md_suoNn10hKl5Na7Q.eZpXJd6tHuSM.cOVRhBMG4GRNaejU
 3urbewT7pRxAfZ.e_EBIBKsmgICytZDwgWD7Eq.c1IgNFAndMTp0n771ZYhVI1AZwSJgaRUsWTdz
 M.Npfl9ThnWNJT.dRWOFJVxFbdnSLqf7_EqEYW8GXvUwjtLaInKoXnx4AbT2nWsUhPPoDkTM7AS7
 B1R9Exf5zHrShnKeip1CL5tRHO0BxeL4KiQJbp8UDwrhC8zwGO5MTbMWS9Z73vzQcbnW7eucWfJs
 EY7xUTfkdAMGF3F89ZhezS9KJfRJvUTTdofVVaF40cBCY.cBNuuV9U8zerg1lert9G5z6BiKQk6p
 tUnPoUJx33IlfmHufyX36UgFQPw5aMGxXxSsh5K7H8SCvsULEXkMMdqOyST2mgOOsfv7sJWMK9OR
 3YyeKuwdnixGHO2rzAAJusN7_sddwH5FX3HDkqoqP29Yobe_waqdYgRVoJS66YojWVkF4sheCyEP
 B4weqe2bx0TPec8BwEfDfh._BFX0YV9MItuzGbCmadIFhZUmOi_7ouKtv4zfDVPPUl_.quIrjcLo
 lktgSinE1Z1qd3Mq_Io__DsESQoa5yKhUj.a8I3843kx07raxxhyMpOTDixYUitNeL4p.vQeqp9k
 xRquJ6uN7G7TJj867pXwdg0acNviLdh6I4ti9WiX4khSTnNJ0XplenTzBnKUADm4Clt8OpmATeqz
 yhceDXfrnh35g9o4hxiWzADXfMEr9_98.cUeq9zi56EzLdQAXmGf900gqC7RsQtKF4IY4T_0RHrF
 qy9awOxiSgblwsFx41agAQSXczZEWfz.wXpKSS3q5TTiq9JvOya69cQeNZsW1EtHGNcYabwCD5OJ
 p2wIaHWebtO9819_m7R1xlffWVs43CkOlOYHnRWX0JIzw_ZL5Y967ulKaY9wvdy2Ms1NYlrE4ZjA
 lznQbz.5faZIjPjyOIgKdjq4n_qPCjIpNBSzEr2h2lgbajpbaDq5qNb84l3XKmR4O24ZtdfaTmbY
 _CYqN5c5eLf0aD4wYLfOUhEYSam.ZJCz7222C8g9OsqGP7EVWmk8BITlnxCUKzVizgeiNeogpA_H
 mRYcfWmCwJrY8Qm93ClBs_tfzlAKDqlPbCpLHbhCFc0A6j94oRR5G.ReDOfH24DcgTm9bZVpgHGw
 YDevbnSQw4IKdYihJGCjwJ1TwbMtAzxl2tcRAjR4lGtuTPJoz5.CRrmCnbd6ki4bxbYLinaaTt.8
 T15PxxjGsS8yKXdTGcG7_zxfnVc8w8ySiQG_azJTD99IkFmI.uzQnY4rXrLYdYIeRsl8mCd0ruoJ
 yA_98p5NZ0eGQzw5nq77q6KYcNQHnTzajpNOwVIiNsn_KyYf2HVtpTMzYc3.gAhJSFmawDWyUmvK
 WtariNWxozSQ8eIDzHG0wl3UzAcUCffGpHhxr3ZUBgsQF7ScJZojsa413xQnyRmwxWd1nVTxyM_6
 wwOOH5SxmSflG5is71O7hW6MDlx8YbaLt3TjrKzyn3q6UapYbVzTzAdeU5MKxfOc8_P_1X2axX9z
 0gjBrQ2OCQurKNmbUfYZShafMhbzqlgWv2FR.2MZ8hdCmPFz4B9r6G_mi537wuJZp8Eg1xYT2eNq
 Nlp5rie0Rli1WGiXWqpoO8R_IzsR0NkRvH9yjJsMXX2I6f1SKUpO6GQEg_SERbib2TdRYXeaJblm
 y5NDNm78bFvGeQzwTHd0Gvbi8xIOowbqEO11x6LCendbh7q44uyUl.OxhyVU8xaaBd3b1s4UEJfq
 E4mSF2332hWxU28hobSoqjVAdOIKc04JwJqu7YCIcI55Op.HlANqFcJsv7bebQi8AnZpEVJBBi.x
 2iBnv7LiYyel32vXrrnvWBH45
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.bf2.yahoo.com with HTTP; Wed, 6 Oct 2021 21:17:36 +0000
Date: Wed, 6 Oct 2021 21:17:13 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <762418874.31908.1633555033438@mail.yahoo.com>
In-Reply-To: <139ec7d4-dd2a-78ca-8f13-27c03a7f6f5f@gmail.com>
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com> <1607813094.1558445.1633542971951@mail.yahoo.com> <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com> <1086779613.13333.1633549973441@mail.yahoo.com> <139ec7d4-dd2a-78ca-8f13-27c03a7f6f5f@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19116 YMailNorrin
Message-ID-Hash: SATZS3OWGSSTEJDCZ2VLJWM6ZFMIX6GG
X-Message-ID-Hash: SATZS3OWGSSTEJDCZ2VLJWM6ZFMIX6GG
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SATZS3OWGSSTEJDCZ2VLJWM6ZFMIX6GG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3089692910175115450=="

--===============3089692910175115450==
Content-Type: multipart/alternative;
	boundary="----=_Part_31907_1416529779.1633555033436"

------=_Part_31907_1416529779.1633555033436
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
So, just to clarify, if its "required" is there no way of disabling it or r=
emoving??=20

 The project I'm working on is based on using the Open CPI framework, which=
 is basically an opensource framework for developing and executing componen=
t based apps on embedded platforms. With that being said, my task isn't tig=
htly bound to using UHD, therefore, I would like to disable or remove MPM f=
or a custom application.=C2=A0=20
    On Wednesday, October 6, 2021, 03:54:37 PM EDT, Marcus D. Leech <patchv=
onbraun@gmail.com> wrote: =20
=20
  On 2021-10-06 3:52 p.m., Tellrell White wrote:
 =20
=20
 Thanks for the clarification.=20
 =20
  I tried disabling and stopping MPM in order to release the I2C device tha=
t I want to read from. However, i'm still getting the same error that I sta=
ted above("device or resource is busy"). Is there any way of disabling or s=
topping MPM ?
 =20
      On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus D. Leech <patc=
hvonbraun@gmail.com> wrote: =20
 =20
      On 2021-10-06 1:56 p.m., Tellrell White via USRP-users wrote:
 =20
=20
    Currently, I have an app that I've cross-compiled for the N310 and I'm =
trying to read data from the I/O Expander(TCA6408a) on the daughterboard, h=
owever, I'm getting an error stating that the "device or resource is busy" =
which leads me to believe that there is a driver already using the device. =
Does anyone have any insight on this?? Also, is there any information on us=
ing I2C for the n3xx devices?=20
  =20
=20
 Pretty sure that MPM (part of the UHD environment) "owns" the I2C and SPI =
interfaces.
=20
=20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
     Given that MPM is *required* to allow UHD to operate and for you to do=
 SDRy things, I'm not sure that's the right approach.
=20
 You might look at the code of MPM and see if there's a way to squeeze the =
functionality you want from doing I2C things into the way MPM does things.
=20
=20
  =20
------=_Part_31907_1416529779.1633555033436
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp8964bfacyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div><br></div><div dir="ltr" data-setdir="false">So, just to clarify, if its "required" is there no way of disabling it or removing?? <br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"> The project I'm working on is based on using the Open CPI framework, which is basically an opensource framework for developing and executing component based apps on embedded platforms. With that being said, my task isn't tightly bound to using UHD, therefore, I would like to disable or remove MPM for a custom application.&nbsp; <br></div>
        
        </div><div id="yahoo_quoted_4426225589" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Wednesday, October 6, 2021, 03:54:37 PM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv5351896031"><div>
    <div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd01979"><div class="yiv5351896031moz-cite-prefix">On 2021-10-06 3:52 p.m., Tellrell White
      wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div></div><div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd92402"></div><div><div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd85791"><div class="yiv5351896031ydp2f1a90e8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">Thanks for the clarification.
          <br clear="none">
        </div>
        <div dir="ltr"><br clear="none">
        </div>
        <div dir="ltr">I tried disabling and
          stopping MPM in order to release the I2C device that I want to
          read from. However, i'm still getting the same error that I
          stated above("device or resource is busy"). Is there any way
          of disabling or stopping MPM ?<br clear="none">
        </div>
        <div><br clear="none">
        </div>
      </div>
      </div><div class="yiv5351896031yahoo_quoted" id="yiv5351896031yahoo_quoted_4091168429"><div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd59403">
        </div><div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;"><div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd13191">
          <div> On Wednesday, October 6, 2021, 02:50:06 PM EDT, Marcus
            D. Leech <a rel="nofollow noopener noreferrer" shape="rect" class="yiv5351896031moz-txt-link-rfc2396E" ymailto="mailto:patchvonbraun@gmail.com" target="_blank" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear="none">
          </div>
          <div><br clear="none">
          </div>
          </div><div><div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd44269">
            <div id="yiv5351896031">
              <div class="yiv5351896031yqt7676288349" id="yiv5351896031yqt14983">
                <div>
                  <div class="yiv5351896031moz-cite-prefix">On
                    2021-10-06 1:56 p.m., Tellrell White via USRP-users
                    wrote:<br clear="none">
                  </div>
                  <blockquote type="cite"> </blockquote>
                </div>
                <div>
                  <div class="yiv5351896031yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
                    <div dir="ltr">Currently, I have an app that I've
                      cross-compiled for the N310 and I'm trying to read
                      data from the I/O Expander(TCA6408a) on the
                      daughterboard, however, I'm getting an error
                      stating that the "device or resource is busy"
                      which leads me to believe that there is a driver
                      already using the device. Does anyone have any
                      insight on this?? Also, is there any information
                      on using I2C for the n3xx devices? <br clear="none">
                    </div>
                  </div>
                  <br clear="none">
                  <br clear="none">
                  Pretty sure that MPM (part of the UHD environment)
                  "owns" the I2C and SPI interfaces.<br clear="none">
                  <br clear="none">
                  <br clear="none">
                  <br clear="none">
                </div>
              </div>
            </div>
            </div><div class="yiv5351896031yqt7676288349" id="yiv5351896031yqt52002"><div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd65671">_______________________________________________<br clear="none">
              USRP-users mailing list -- <a rel="nofollow noopener noreferrer" shape="rect" ymailto="mailto:usrp-users@lists.ettus.com" target="_blank" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear="none">
              To unsubscribe send an email to <a rel="nofollow noopener noreferrer" shape="rect" ymailto="mailto:usrp-users-leave@lists.ettus.com" target="_blank" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></div><br clear="none">
            </div>
          </div>
        </div>
      </div>
    
    Given that MPM is *required* to allow UHD to operate and for you to
    do SDRy things, I'm not sure that's the right approach.<br clear="none">
    <br clear="none">
    You might look at the code of MPM and see if there's a way to
    squeeze the functionality you want from doing I2C things into the
    way MPM does things.<div class="yiv5351896031yqt8096331298" id="yiv5351896031yqtfd56378"><br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_31907_1416529779.1633555033436--

--===============3089692910175115450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3089692910175115450==--
