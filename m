Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFC042C3E7
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 16:48:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DBF9384658
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 10:48:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="fwStUTUG";
	dkim-atps=neutral
Received: from sonic314-13.consmr.mail.bf2.yahoo.com (sonic314-13.consmr.mail.bf2.yahoo.com [74.6.132.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 69C69383BD7
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 10:47:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634136474; bh=zPHzFtI3ou7naMFPQgUMMvOStOFer5LG280Fl0cV6UE=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=fwStUTUGWUpeC/4W/l/doi68upCGXaxrhhne2aGth9afHs2U5IegqXUi/qD1nsvtVAnKb3pFuU5teWvBVPKtzM7CCHIJEsQ6wjIjmbKNQY9nMEKXtjaRk27YE2JXqPFsinD2jjpBE9OlAV0vrBt3Fewf6Ys90Fug5uLHwO02VGoRBQ/DXq818GJDZnmeLjh14Mae8TKLpOj7klGKfemcAqNh4IU6tld7U2NKqFPdspjS+YbPMjZ2RSZUg/B4eJi27Qlac0bDt1PONf2/zPorfAvcj6a/EsxB8AQPEZkCP+lybwDI3k1/5FvB7Xp0bP3mP1MRd2azff+c1o3p2gzs1g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634136474; bh=Z+5sWSSzaUM2udKMkk/Jl8LclkJVv3TYPWhm5f2oxYu=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=OPJIUVv9ahNXL04/4X+lFFqaPWdS9S6ksAem4XmQPiI/9mzUMrwmpBeHIRg0fyS76diZU6Cs6PqEFMjHa5wkC6JB84XfxITtWFDT6OklIrJsfkALgwssqZL/bS9hwA536BqVLzfLJPbqHqBialUMpDmcmCrWaXoGk0I0bAvv2AodtlJMEIjy0NobUteJT+60GxL9KGsvx5WeDTZ8H+672G29U3ZmZC0i2bZHpeJ+vNw9m7DQBWCTp3uAtLq81pZ+cz8I53k0wg00GsbPT+H3TggHMCbKlQjILbOF59TkjReDxml8i0NNIK0PeMmWXz9mSdWr8F8y74kDV7OybiEjyg==
X-YMail-OSG: WyhC09gVM1kw11VNAWpFL8NQC2K16nODAppGj2IciMIdX_.c0SyPoDaRM00h1me
 C58L1X8bgiN5vm8ZCr1QmLYggU6GsswBByqIFZkbaYnd_KnVH_qB7EqFr0MnmMmmBkQCdBXdXXqj
 .UIGQVAeZwDLEMsxv75fy2jy837nS0AIgN3OkcNjJPeAGWRdQLcv8pQfBCPkZZrG8G6MaCweyac0
 CRokgxJGbSDVncdSBRHKFV_Yj8esuD9kv0JK7z6i1z_9ul_ARQaBb1d494hvOrGWW6U_XzggfCnr
 1VHgnuroZldtJurvmaQq_9G4YT2m.HjUCtmc6m9kpwoW2g.Qy9wzviIqaZ70CK3LXM3C36DdYQ8Z
 Q6YlAmKrtAbKWFX.O.hpjwMCAWNLKI8h0d2PQ8mHF0Eqhky61Gqo3WCRDoMaPzAs69IoNYknp0xI
 9Kg8.gSKxafCjQ3zZ_XA5Q11rGmi4IseSvMQMVzHEiLZR61qx.OmaNxShuQCNb2yN0YeBz7TS1ek
 o5W3KVXbNzuFQJk9jT5CAnMb2_s4bAd3hrbm1dDA.bAKMbFqscpGEGoDh9LYldC3WUkpW6MBPLCa
 xVAekvrl9wlRfF5JO.4GkBJf3bF4.9s9m8mMUJlV0_5PyHRi9rUVJvqsrajRzJSGll8GtGgnmcDQ
 ch4IuAC59ZeupnJ_FgPjvvMbM8xQdBvVtec4PaG9dtetso2LvPh7m3us3gkTTN2yjOx5psOZYuMU
 OpXU01_kq6fWrtgLIwDkfac76WeGdlhrXj.qJlNwWu2hXTOMzdR5T7sxBXYYnARjE2mPik29Ipla
 TuXK2Rg1WHTxm6oNaK7DeSCZ5SvU_5PWTqRjQCCTtd810lVJdQnEYZb6QXHPsJAS2OgCdXdvV8gb
 zNvjP7ZGm.EHWFVhFqwUF.d2d96J.iE864BhjQeQbMAJjxa9TepdTVGQHhF7lUC_AErhm6Fe4Wgo
 iqZTWZXNUUFtUh148IgeIj.BUAH4GcmDD16SevWP5N3Cdq0Q0Alc8hgCCSJKJa7du7mVkmcv47xW
 ROgs5iQbGD.HuY95DkWAG7Mq.SnVA2Qr4OUbeuU_taKD0g9.YzO4DrZTxI_.4SIMvo4KwPjuiY_L
 Blu5ERQ6yoS4tVXqYtKNWm.GhS4.K82DHMyYW5dJU5H0o.gW4uubroDQdPx69nVqZrhn4khjirh3
 6B_JJrt4ekCSR.aSz0qYa0BGxNGMQC8xSJ6pfqMuME5hggFtzhcc.HihdiMJMeAB0ouPQGFOVB1T
 JYSymgT7z.PC_EObeEyJyqovGKOdfApx0f2oruOcZu0eJ.SYC1RYALEdBgKOErRPz0_yd35XC0D2
 Ok29WBI_3J.zhWTGpIA_CAtIf6Ya64Ux8xYIo7nBwtl1KuKi37IhDQJTA1YgJwjiYz2S4iS6telo
 mKoet7_1mS4mE0o7ey.WJJZuAb5WGqYMVK0m2wSMcTL_HEyRuCGC8lDCDj9pRDUlq3m38HmfzCB8
 S5y7fVtGM_wr2mpfvQyiFQW1Os3mGBlowlmtsg_.A.rkxLaLFzQwRRzv5asIjZuNSt8h87Jta3Hd
 kV_cfAqpXMMJ5RPhh5Ucd2qlZ2mbWaOzcTEGxb1XRc89x8aaI2OJHrAoqoI08AAaDmVIrFRRQcr7
 jKt54K9zd43on_.o5Hz9sNM8fPiwDaXAnVgd1fXv.Ghp3dGmhhsW6kFGNzLwgR2gTVSk4MXKJ8Fj
 4koU3p5xvxy_y99OAB0k_2pbSllMW2DeRiPkcncWBjYAgSaLyUo_UMrg.AQGoIsQButniwpjyRYt
 8BqQcrSPIu4JGMvx6qkAFcE12CoMGPEajx9Fgdo__74pC346JFsaXPNM.T8VAi5FWg5fKhs6IXwN
 2eqI0SvKbVvC1nWHE6FhQM.nhjTW_LQsCjCEpWueW2nEO9FeIiHr.5Fh7znRoBjeiBX.Qy9gw1eY
 VmAQgerBwOoar.OQMW5h8c6BGolBtSrZ8uOeNDibLIBUkivLdCZwrtN8ZzgQd4tAIMLgKa5N9Q.k
 qDCJN.VYLT3vhGNNI.9b5roOGx6xkghWbd1gDqYROvdAhy0DIOgm3ztccOAtpMbq5He4vrL3ZyIW
 ghXubmW7NX2N9fHSrg9JLB55z4VGlXr3tK6nAWE1R_Qh3CnlK84ivyLZUBUykITZojuRfUWqS7yb
 VGXhn2gGc6Fg42TncCALGbFZusPJ.kjR4ULGTGVG3D.4vmSQiD40_rRNcQWbtrRQIFsCgZjVyK40
 A5D89wY2esQleml9PNqvEa1Gp0ikMcm8YW4YEl2sjzxFmduub97Q-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Wed, 13 Oct 2021 14:47:54 +0000
Date: Wed, 13 Oct 2021 14:47:51 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <856481431.1048328.1634136471059@mail.yahoo.com>
In-Reply-To: <a6249e84-4181-335b-ae52-fb638b291f33@gmail.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com> <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com> <279084312.1067344.1634061310152@mail.yahoo.com> <2012533350.1050943.1634062837483@mail.yahoo.com> <afc23cc1-6024-9591-afaf-745b50327ce2@gmail.com> <672425144.1077012.1634064314721@mail.yahoo.com> <a6249e84-4181-335b-ae52-fb638b291f33@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19116 YMailNorrin
Message-ID-Hash: 3PYZOYHOEJRTF7577D3654CSZUYNUTVW
X-Message-ID-Hash: 3PYZOYHOEJRTF7577D3654CSZUYNUTVW
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3PYZOYHOEJRTF7577D3654CSZUYNUTVW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5568570347395982378=="

--===============5568570347395982378==
Content-Type: multipart/alternative;
	boundary="----=_Part_1048327_1032424264.1634136471057"

------=_Part_1048327_1032424264.1634136471057
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
Well, I'm trying to communicate with the chip thru the I2C switch(TCA9548a)=
 on the PS side. From the schematic for the N310, I'm missing how the FPGA =
could be involved here since I'm trying to accomplish this on the PS side. =
Maybe I'm missing something here.=20
    On Tuesday, October 12, 2021, 02:56:38 PM EDT, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
=20
  On 2021-10-12 2:45 p.m., Tellrell White wrote:
 =20
=20
 5918 root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 2208 S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 grep usrp
 =20
      On Tuesday, October 12, 2021, 02:38:36 PM EDT, Marcus D. Leech <patch=
vonbraun@gmail.com> wrote: =20
 =20
      On 2021-10-12 2:20 p.m., Tellrell White wrote:
 =20
=20
      Out of curiosity, when running "systemctl status usrp-hwd" I get a me=
ssage stating "vendor preset=3Denabled". Is there anyway possible that mpm =
is still being started at bootup?=20
 =20
            On=20
    What does
=20
 ps |grep usrp
=20
 Yield?=20
=20
=20
       OK, so it isn't usrp-hwd that is "holding" it.
=20
 That chip on the DB controls signals like "PWRGOOD", it's possible that th=
e FPGA itself is logically "holding" that interface, but that's just
 =C2=A0 total speculation on my part.=C2=A0=C2=A0 If the "lsof" utility wer=
e installed, it would be easy to see if some app-layer process had it open.=
=C2=A0 But this
 =C2=A0 system image doesn't include "lsof".
=20
=20
  =20
------=_Part_1048327_1032424264.1634136471057
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp94f10beeyahoo-style-wrap" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;"><div></div>
        <div><br></div><div dir="ltr" data-setdir="false">Well, I'm trying to communicate with the chip thru the I2C switch(TCA9548a) on the PS side. From the schematic for the N310, I'm missing how the FPGA could be involved here since I'm trying to accomplish this on the PS side. Maybe I'm missing something here. <br></div>
        
        </div><div id="yahoo_quoted_4929773087" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, October 12, 2021, 02:56:38 PM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv5761735014"><div>
    <div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd75530"><div class="yiv5761735014moz-cite-prefix">On 2021-10-12 2:45 p.m., Tellrell White
      wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div></div><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd98421"></div><div><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd95004"><div class="yiv5761735014ydp9e6c6f52yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">5918 root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2208
          S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; grep usrp<br clear="none">
        </div>
        <div><br clear="none">
        </div>
      </div>
      </div><div class="yiv5761735014yahoo_quoted" id="yiv5761735014yahoo_quoted_5024334566"><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd02974">
        </div><div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;"><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd08820">
          <div> On Tuesday, October 12, 2021, 02:38:36 PM EDT, Marcus D.
            Leech <a rel="nofollow noopener noreferrer" shape="rect" class="yiv5761735014moz-txt-link-rfc2396E" ymailto="mailto:patchvonbraun@gmail.com" target="_blank" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear="none">
          </div>
          <div><br clear="none">
          </div>
          </div><div><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd03955">
            </div><div id="yiv5761735014"><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd87328">
              <div>
                <div class="yiv5761735014yqt9819641612" id="yiv5761735014yqtfd12258">
                  <div class="yiv5761735014moz-cite-prefix">On
                    2021-10-12 2:20 p.m., Tellrell White wrote:<br clear="none">
                  </div>
                  <blockquote type="cite"> </blockquote>
                </div>
              </div>
              </div><div><div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd51611">
                <div class="yiv5761735014yqt9819641612" id="yiv5761735014yqtfd45707">
                  <div class="yiv5761735014ydpee2354d5yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
                    <div dir="ltr">Out of curiosity, when running
                      "systemctl status usrp-hwd" I get a message
                      stating "vendor preset=enabled". Is there anyway
                      possible that mpm is still being started at
                      bootup? <br clear="none">
                    </div>
                    <div><br clear="none">
                    </div>
                  </div>
                </div>
                <div class="yiv5761735014yahoo_quoted" id="yiv5761735014yahoo_quoted_4922596405">
                  <div class="yiv5761735014yqt9819641612" id="yiv5761735014yqtfd28951"> </div>
                  <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                    <div class="yiv5761735014yqt9819641612" id="yiv5761735014yqtfd83448"> </div>
                    <div>
                      <div class="yiv5761735014yqt9819641612" id="yiv5761735014yqtfd89395"> On</div>
                      <br clear="none">
                    </div>
                  </div>
                </div>
                What does<br clear="none">
                <br clear="none">
                ps |grep usrp<br clear="none">
                <br clear="none">
                Yield?
                </div><div class="yiv5761735014yqt9819641612" id="yiv5761735014yqtfd98015"><br clear="none">
                  <br clear="none">
                  <br clear="none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    
    OK, so it isn't usrp-hwd that is "holding" it.<br clear="none">
    <br clear="none">
    That chip on the DB controls signals like "PWRGOOD", it's possible
    that the FPGA itself is logically "holding" that interface, but
    that's just<br clear="none">
    &nbsp; total speculation on my part.&nbsp;&nbsp; If the "lsof" utility were
    installed, it would be easy to see if some app-layer process had it
    open.&nbsp; But this<br clear="none">
    &nbsp; system image doesn't include "lsof".<div class="yiv5761735014yqt6273952856" id="yiv5761735014yqtfd75530"><br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1048327_1032424264.1634136471057--

--===============5568570347395982378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5568570347395982378==--
