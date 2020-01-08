Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BD0134DD9
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 21:46:08 +0100 (CET)
Received: from [::1] (port=36372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipIDP-00039M-CK; Wed, 08 Jan 2020 15:46:07 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:37103)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1ipIDM-00034s-4Y
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 15:46:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1578516322; bh=fzCHdguSV8/xMM4/9tzkod1Ka3dWi0fNlO0GJ2mtoFo=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=BLFUeZYjR90eO8d0sDnXjcIKzHPT/z9wKoHs7wAWzDEmfxy9nHSypoHKtKubJ2f5AXMQh0x3jdTJf5kjgz3NSpTFqYlX+EojQMSdFIs9k1DL9O6n8SekbIH72tq2Fzb1jOD0bKRb+do62jCTqVk8O1v8sEYFl+J22Nw5OHXlqwKT0YINlz1oBQcaXyQT3w0AmIw/Hn2bcRqsDYHE40as4bOaRz8BxCTt5SQJ0AWG6XEndLaO/7JffTo/VSsXqJbVl3CrFM9sGvkeopXO8a9f91+6JlE41Ks5dJ1zcNCQBYH6929F7cLh4uev8hu6OvjLvI10gFrVzKH+ZFMAIWD6Lg==
X-YMail-OSG: nNksKwgVM1lca3lgStg0UUZv.CcfBNLLIGze1b1pDaXyyaoDnCDps_5o7_1AZ2E
 Pp_YH9V_nz4r.sSWi.if.jG7HCUqD2bhK0TAB.Xs5WPgPxS.EL3oD3UP.RgHStLg26tylM6..ADL
 huUMOFQmXpEHNgGGpk9a4hIMhp2QCaHRYlcsphxxIOjfTDpHaaCDImeBeYGj.JXuBaUifNPOpZcf
 Q7Uw3vRpCm29Daggd2zAyyZNSE2s0JcnnwuEehrAW0zjf3veSzoXvq4ZXft8NCUzVMhYKbZZAfSf
 vJtWV22LlynGl9E1N2jP_bWnuXGt9HOj62chUkRo7wM0sStSif1BQlvnCAEUFDAxpufVlKLXvWe7
 IzhtCu43HmgYQbV.0UB_jPKLwtc0cwQdw_7E_sUJU5P6DfmJ.taEtTAoQB8cLza6T7nNspZEFV0a
 AKjRUBCi_rQGfCY1r1bNydcRY_moxqk671zo8RHgr7C08pjr5BTGx.r3pH2n69HETma744mr8AqJ
 F2IoOueBv8DXEtrZZGKi0qJOy5jNqyhdJ_NzTfM4UACD8OjX0GYqh0PTpbucHh0dznIMVnG40_gD
 jvj5rQaVodiCfU5AyaVmlNq4H3ytzVHEp1R.hMXHxWI1by.4zOCBy38sSIZcokK_BN74yFC5avTs
 v1TlS1iAK1PIJqKEgwLWqUyfHIZOK91k5WSo5a7Rdu7hui0u.w3zivvRE9jwizLeMyCQUrwTy7aY
 o4idlj9IVfDlhIJ8F_w3fmxJF31Dz.Qg7BP1RwSPzTDwgQqNdQCe7fSSxgM1CpMGuAZBGT9iV7JB
 SoGU3G9vZ.ja4ESODWbn0lQeE9LvRHi3je1t0j2TAjCyi9zQHHoYrQrnjwjoKiRxFKD29jmTK704
 JOS6WBM9HRclpFQV6rCTRbHvM.erIKOj8bFsdn3pRFwKeddAUC2TFg2BBnxNR8s4gP_5B.xANvhb
 UMjPNeNSSKvspwpa7CCOrdkgwDoBGs_vlyDmI0Jp7tB2AniA7m2Xf4HxdjipqgS1zLRBQe921qfD
 w8TjbthrLUTDD8863Wo5OmbBzqPPChbXFvUZEclkVotyNF4uLsZQ6Rdv935rybsFP4_orowm9vuT
 sAOF.qGJebC6K8XfThSd62phvHhSatUIW6ZRQFxmuy91dYUsuTvBAcLOCL943YVlbZCIgB0r5DR2
 0l.j.TQbu6XJ_lBO4t_pYhBYskg84lszjke45zoL7bnkZbECgS_8FLyr9TNiAnjwTGVlSktHoQRB
 CBGJ.xix9.TNkRcNrOcBR44QGg38CkSCPvDl7kYlQSG_tD.sk.79VfHXnsIlzE9WnANviktBuxcT
 pFN_1gbbriBVxWkuYjpUjz.tO5_Mc9A8ECA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Wed, 8 Jan 2020 20:45:22 +0000
Date: Wed, 8 Jan 2020 20:45:21 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1693583403.8730630.1578516321483@mail.yahoo.com>
In-Reply-To: <5E163E65.70104@gmail.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
 <900064020.8665629.1578507448504@mail.yahoo.com> <5E163E65.70104@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64; rv:71.0) Gecko/20100101 Firefox/71.0
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
Content-Type: multipart/mixed; boundary="===============5725481796894379649=="
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

--===============5725481796894379649==
Content-Type: multipart/alternative; 
	boundary="----=_Part_8730629_665648044.1578516321481"
Content-Length: 9466

------=_Part_8730629_665648044.1578516321481
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,=C2=A0 Which version would you suggest? Also can you please conf=
irm whether it would work on 3.10.1.0 ?BR,Santosh

    On Wednesday, January 8, 2020, 8:41:11 PM GMT, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
=20
  On 01/08/2020 01:17 PM, voonna santosh wrote:
 =20
  Hi Marcus, I am using USRP X300
  =20
 Could you try a more recent UHD?
=20
=20
=20
 =20
      On Wednesday, January 8, 2020, 6:13:26 PM GMT, Marcus D Leech <patchv=
onbraun@gmail.com> wrote: =20
 =20
    Are you able to use a more recent UHD?=20
  What device type?
=20
 Sent from my iPhone =20
=20
On Jan 8, 2020, at 8:30 AM, voonna santosh via USRP-users <usrp-users@lists=
.ettus.com> wrote:
=20
=20
  =20
  =EF=BB=BF   Hi There, =C2=A0=C2=A0 Good morning. I am experiencing an iss=
ue with tx_samples_from_file when using option "--repeat". Everything looks=
 alright when it TX the file, but once it reaches the end of the file, it p=
rints S and nothing appears on analyzer soon after that.=20
 =20
    The command I am using: ./tx_samples_from_file --args addr=3D192.168.40=
.2=C2=A0 --file /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28=
G.bin=C2=A0=C2=A0 --type short --spb 3640 --rate 50e6 --freq 60e6=C2=A0 --g=
ain 0 --ant TX/RX --subdev A:0 --bw 40 --ref internal --delay 0 --repeat=20
 =20
  Git tag: release_003_010_001_000
 =20
 =20
  Thanks and Regards,   Santosh=20
 =20
   _______________________________________________
 USRP-users mailing list
 USRP-users@lists.ettus.com
 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=20
  =20
      =20
=20
  =20
------=_Part_8730629_665648044.1578516321481
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp27ebd4ceyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div><div dir=3D"=
ltr" data-setdir=3D"false">&nbsp; Which version would you suggest? Also can=
 you please confirm whether it would work on 3.10.1.0 ?</div><div dir=3D"lt=
r" data-setdir=3D"false">BR,</div><div dir=3D"ltr" data-setdir=3D"false">Sa=
ntosh<br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_9255235084" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, January 8, 2020, 8:41:11 PM GMT, Marcus D=
. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv8971027758"><div>
    <div class=3D"yiv8971027758moz-cite-prefix">On 01/08/2020 01:17 PM, voo=
nna santosh
      wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      <div class=3D"yiv8971027758ydpf519db33yahoo-style-wrap" style=3D"font=
-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr">Hi Marcus,</div>
        <div dir=3D"ltr">I am using USRP X300<br clear=3D"none">
        </div>
      </div>
    </blockquote>
    Could you try a more recent UHD?<div class=3D"yiv8971027758yqt441351169=
5" id=3D"yiv8971027758yqtfd36934"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div class=3D"yiv8971027758ydpf519db33yahoo-style-wrap" style=3D"font=
-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
        <div><br clear=3D"none">
        </div>
      </div>
      <div class=3D"yiv8971027758yahoo_quoted" id=3D"yiv8971027758yahoo_quo=
ted_9326676555">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, January 8, 2020, 6:13:26 PM GMT, Marcus D
            Leech <a rel=3D"nofollow" shape=3D"rect" class=3D"yiv8971027758=
moz-txt-link-rfc2396E" ymailto=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.co=
m&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"yiv8971027758">
              <div>Are you able to use a more recent UHD?
                <div><br clear=3D"none">
                </div>
                <div>What device type?<br clear=3D"none">
                  <br clear=3D"none">
                  <div dir=3D"ltr">Sent from my iPhone</div>
                  <div dir=3D"ltr">
                    <div class=3D"yiv8971027758yqt5783188279" id=3D"yiv8971=
027758yqtfd89129"><br clear=3D"none">
                      <blockquote type=3D"cite">On Jan 8, 2020, at 8:30
                        AM, voonna santosh via USRP-users
                        <a rel=3D"nofollow" shape=3D"rect" class=3D"yiv8971=
027758moz-txt-link-rfc2396E" ymailto=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users=
@lists.ettus.com&gt;</a> wrote:<br clear=3D"none">
                        <br clear=3D"none">
                      </blockquote>
                    </div>
                  </div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">
                      <div class=3D"yiv8971027758yqt5783188279" id=3D"yiv89=
71027758yqtfd57626">=EF=BB=BF</div>
                      <div class=3D"yiv8971027758yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
                        <div class=3D"yiv8971027758yqt5783188279" id=3D"yiv=
8971027758yqtfd09113">
                          <div dir=3D"ltr">Hi There,</div>
                          <div dir=3D"ltr">&nbsp;&nbsp; Good morning. I am
                            experiencing an issue with <span>tx_samples_fro=
m_file
                              when using option "--repeat". Everything
                              looks alright when it TX the file, but
                              once it reaches the end of the file, it
                              prints S and nothing appears on analyzer
                              soon after that. <br clear=3D"none">
                            </span></div>
                          <div dir=3D"ltr"><span><br clear=3D"none">
                            </span></div>
                        </div>
                        <div dir=3D"ltr">
                          <div class=3D"yiv8971027758yqt5783188279" id=3D"y=
iv8971027758yqtfd19957"><span>The
                              command I am using: <span>./tx_samples_from_f=
ile
                                --args addr=3D192.168.40.2&nbsp; --file
                                /home/santoshvoonna/repo/test_files/test_fi=
le_SW_Samples_28G.bin&nbsp;&nbsp;
                                --type short --spb 3640 --rate 50e6
                                --freq 60e6&nbsp; --gain 0 --ant TX/RX
                                --subdev A:0 --bw 40 --ref internal
                                --delay 0 --repeat <br clear=3D"none">
                              </span></span>
                            <div><br clear=3D"none">
                            </div>
                            <div dir=3D"ltr">Git tag: <span>release_003_010=
_001_000</span><br clear=3D"none">
                            </div>
                            <div><br clear=3D"none">
                            </div>
                            <div><br clear=3D"none">
                            </div>
                            <div dir=3D"ltr">Thanks and Regards,</div>
                          </div>
                          <div dir=3D"ltr">
                            <div class=3D"yiv8971027758yqt5783188279" id=3D=
"yiv8971027758yqtfd28993">Santosh</div>
                            <br clear=3D"none">
                          </div>
                          <span></span><br clear=3D"none">
                        </div>
                      </div>
                      <span>_______________________________________________=
</span><br clear=3D"none">
                      <span>USRP-users mailing list</span><br clear=3D"none=
">
                      <span><a rel=3D"nofollow" shape=3D"rect" class=3D"yiv=
8971027758moz-txt-link-abbreviated" ymailto=3D"mailto:USRP-users@lists.ettu=
s.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-us=
ers@lists.ettus.com</a></span><br clear=3D"none">
                      <span><a rel=3D"nofollow" shape=3D"rect" class=3D"yiv=
8971027758moz-txt-link-freetext" target=3D"_blank" href=3D"http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a></span>
                      <div class=3D"yiv8971027758yqt5783188279" id=3D"yiv89=
71027758yqtfd34122"><br clear=3D"none">
                      </div>
                    </div>
                  </blockquote>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_8730629_665648044.1578516321481--


--===============5725481796894379649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5725481796894379649==--

