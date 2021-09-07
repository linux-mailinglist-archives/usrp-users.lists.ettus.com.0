Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1926402F5F
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 22:05:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1122384AB4
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 16:05:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="szDXnHzZ";
	dkim-atps=neutral
Received: from sonic317-26.consmr.mail.bf2.yahoo.com (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
	by mm2.emwd.com (Postfix) with ESMTPS id F33A4383D56
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 16:04:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631045092; bh=N3dPtFQfR08oDlo2wkNc2mN+ti8RqtvDyohpZePX3pM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=szDXnHzZ5iF4aGpaurYpq03UP2S7Mtpx3sv/BVNypxTQw0pauvpf07FIPXFJoOSpgRe+fcf+QZuSX+OmBeWDIrme1yoeL/fGAHBUIraDE9HeloFXf+JLkSwkPeb/CvMQhxt5XVW89CM5SSg9r1w2Z49i5ltjBFe0oYYLPcxqTz7nL5DS/N9uqP4jsXNHPMJ6Olwer20rhCuf0EpHSGnTrNDmuh+VrN7GVs4eK1BOOhorEuhEtIEwMgoMqvfH3dqm0BuhMzMJ6q2/0PjBxBMnY8caAS0S3VgE4ffAaoqMQne+Wyq/ZackWu565R1kOnErZBaZ8pqyhNw/Xihy2yfLQQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631045092; bh=dl6NfEgr08+DC9KIDR3X7AgJtheZTKl6jEeY8VlbikS=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=LN65IdBTfgxkysesCorTm1lxbzWaP33ltPfdS6gXPNGfPZ35wiPFvNcv9JvgYHsRfxh6r1JrOunCsDTI3mZ77X8tp0F6YDd3lJ3feAQ0th0BfcMl+v0hN9DoOKKsQEZ4IKjF1Z1oyTjrk+s/TgEyYDybb96B/i5VomBjNeq5AXFiOmKg74zCrt/CSzdKpxpH9CwKO2R4+yxYi+F9PM3D0W8s2eMGLbbkzSul9X92zu9181S+H5bBT+eg7KH2pDfwNo+As+FrNkIWxhfPNsidJpTwEKHMTQxLs5rMQvoN1zGzwrb6h3QRdBv6QE8pgcLrO/mI8eOXDiNoAShYZWoWlg==
X-YMail-OSG: UqwH..wVM1lcLfeEgaPM6CSALtRpXvR3y8.TDGALsBukwhmJ9YmMdasym286J7I
 iqU50vPxyZN1wJ1IFxf6LoYtvp1KsT1OkJXFCyVMLJqfA5XyiOzPybNcDVhuKf2v_MTIdP3CCb.F
 DAvSuWq9_x98iPGPxQC8LmE5Fj4UtXwNkcyP9R4B0nZdWA7.Laww9hX2F9Hv8Ww48yJQeP4RNK9H
 ObK3vpwCbFnFuOTsvVjrh5YseenfQalo5C1SB6s0cZL3bqZMZe_mmzSx8dFcxUNz1x5Lyx0BUNoG
 wer_UkjgPtZgXyUX.GU_OgYFChTOixF5Yn.4fLRLVk6pHQhBR3VKgMVLWFVHRKy1UTK_w.YeGp_Z
 9dDYxSseJnJ5sfLw4IiCHL9j8iud4Bk8DQM1jDCXGSAfBSdr7aIje8gP_ZEcB1LvdvmLjo7oQ3Yq
 s9M0K5Xzb7cdkVPXg2bVPy4d.W.9wv1.8.jDqMGJbbP3EuBvlUVa6c2msWmplfUEPBBT0udiVHxx
 Jh6dx18LB_Dgh2SrHcZHVjRzx82PQCUGxO3UfQDtKnZ4Wxf7VxtITb4cPLas_KSipjg62plD.Eki
 qDg25Q_ORrSuihKKRggNLBOf_yz4XjkoufRG3vkbo_lJH40POMLsSsG43FfmQoXDEIxqJPdlIpEb
 aAtTr0mab0vVC_weyPtHNmFq883VP9T8IsL6ojlvD0h6pV8J8my1V5jVC8IJ40fDv.f55TgSfyjT
 ykZs80KkgL52jkHIfgGUtAQ1QyjlNvl09F4s42h6f_AWbecyugYjxgMWuRkICYj884lrqerWzpqM
 wkKUyQnyQWfn96xtWFkmP_6.y4HrMh7JfBhmAQmy5kbnY5G_OIvEUG0UHZqMZvdY_HnJyl1Khmmc
 oVW2TwbDLutxlW5eJ_b2lnZQJZWjfETUPa_4bagzdLmyaVvwSe_xOZy4Tf2PTKtK7Mg6FS17CX7F
 sA0OgZ9GEwazeS9Wn1ZlJXAq_u1tVuIlsSIWpPj9jKEtajoTjyvAzc..SI5vig5MsgPdBoZ5W8v7
 shLKVhePzOQhObQLGLjkkPCNIQxaWK35auPm_TiRE43KwHd8LfOUQu9vXET68oJlLkrPoRPv_zdI
 QJC_TL1tMT3tBQ_q9qdYXQrhOLWudYRM.3vNqRWdLYD8YOgQo1bqTtKb1TPDmO.CD_EL1AXZ2oOm
 NtwGjGsIKqr5beuXFBnWPTjdjevn.hOHwGd8PBBcvjr5qvjWlE3EH1pvaVkeeM.JhlnAAz2NkJXj
 4pOuWkC_M7VL2hI.pLjA4DBqSaTJis2vwOn59EYiSydOS.MPxcVGdhGaTcA5C7xC4b1iN9u_aB6Q
 TjWJ9Pa2Syv2aqQcCgUc2VMFybXGc28ac5Su3BmSKI8JbrePamiWIs0AUs7u0I4szXBvq4wZTj9x
 X1Ngz_sskIiIm2tTpvSyeDw4U4b25WN5Fe4ROMdrAoBoczIazJROg_CrXTRigrhY4K4f3FRk1D2_
 5t1YpRV829XUppPKnHREcxWuYcK475kiToZs0vkZMHM6FAX4QwWloOd_DhNQ6ExTceLj5qeOSqSA
 HVSm5w4HjQTJLKAObZ0NPZt9l623rc9SEmnuyvV3Z7eMGqOdHVoozrJzJIS_BKd4gaPIes.QdR7E
 SQRAJI7gEwFac4KWY9PRiO.njakE0se6lOjJ1oX52ttP.TCyYNW5Bj3n0AYGWN07uLojPCenn330
 3F8zciNr7PjQ_khNmkqy63dTdbUMj7rtdWi9HX2qBh1QTwdnlMnTJ4112QeAQKVcehsR7A_B9Etz
 ST_7bDlhihJjHLuDnQeLJp327vqgsGstXhl0DcwCG6s0YYIpep4GCx4nD1tp1htFgqwRoS6f9R4g
 8X6k4p0jG0nAsDb.0VmKFbwcOeiRZNiZFqifMBDTKhLE5TRxhY7salV57y.W8eTxi5zz1pYTyCUG
 40zNq51sOyNRN4mZE_zCCvuyqyS4tqb30L61z.ZF1D5iPGuM9LrcLBz5GiQ9NtWrlZVzE1c7EO9b
 3T_mFbTLJS1XQLKfy8DWCAmn48h5CLsRG.EJuv6SEIslxpxfEfgH3SNcjSV536iZkNV.DPZUFSOR
 0NPj.bXVmV2mk7W3iSNL6r7KARTyMP.IQT10IOGiQnFGnBj1eMLBJ_U4MhYGyWsHK5R4ofv_s9ON
 U8fxWVqQ8fgVoNylfFU6SbciJ.d1JeoJlCjUaOqYOakxJ4m8YSRixEjtGxOXc34O3JKgrUfowICU
 P3lbIhh.DLAJA55_CKl7anx4yAgyrnZ5tEHEa.gsaY7ZeYg4JO6VGvsP9OClL
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Tue, 7 Sep 2021 20:04:52 +0000
Date: Tue, 7 Sep 2021 20:04:49 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <685718677.1987116.1631045089074@mail.yahoo.com>
In-Reply-To: <0027ab90-0cde-a374-fd3c-f7888a68b707@gmail.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com> <78915145.1401871.1630855703615@mail.yahoo.com> <606552990.1786539.1630963952986@mail.yahoo.com> <147565774.1577833.1630969165270@mail.yahoo.com> <7d2c5ec1-812b-4f04-6718-d3a0029017ad@gmail.com> <1441256320.1871638.1631016765370@mail.yahoo.com> <0027ab90-0cde-a374-fd3c-f7888a68b707@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: BPHSVYE42SQA5VW3ETBW44C4AQMRZFWQ
X-Message-ID-Hash: BPHSVYE42SQA5VW3ETBW44C4AQMRZFWQ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set Network Buffer in N321 USRP Permanently
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BPHSVYE42SQA5VW3ETBW44C4AQMRZFWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3290616596363408258=="

--===============3290616596363408258==
Content-Type: multipart/alternative;
	boundary="----=_Part_1987115_1688778356.1631045089071"

------=_Part_1987115_1688778356.1631045089071
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
Thanks for your suggestion, Marcus.=C2=A0

    On Tuesday, 7 September 2021, 14:21:19 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-07 8:12 a.m., zhou wrote:
 =20
=20
 Hi Marcus,
       =20
  Thanks for your comments on my other USRP questions. I have another issue=
 with N321 USRP. Following the tuning tips in=C2=A0https://kb.ettus.com/USR=
P_Host_Performance_Tuning_Tips_and_Tricks=C2=A0, I have set wmem_max,=C2=A0=
wmem_default, rmem_max, rmem_default to 33554432 in host (Ubuntu):
       sudo sysctl -w net.core.wmem_max=3D33554432
   sudo sysctl -w net.core.rmem_max=3D33554432
   sudo sysctl -w net.core.wmem_default=3D33554432
   sudo sysctl -w net.core.rmem_default=3D33554432   I have made the config=
uration permanent by adding these lines in=C2=A0/etc/sysctl.conf, such that=
 they won't get lost after host reboot.=C2=A0=20
  I want to do the same in N321 but couldn't because there is no sysctl.con=
f in it. I can still configure these parameters from terminal, but it won't=
 survive a reboot. The Linux in N321 is tiny. How can I make the configurat=
ion permanently in it?=20
  Any comment from the community will be appreciated.=20
  Thanks, Hongwei =20
=20
      I don't have an N321 myself, but you will probably find that there's =
an /etc/sysctl.conf.d directory, and you can create a sysctl.conf file ther=
e.
=20
 But unless you're using the N321 like it's an ordinary host, talking to an=
 *external* USRP, you shouldn't need to adjust these parameters.
=20
 When you're streaming samples into/out-of the N321, they don't go through =
the CPU portion of the Zynq at all, so these parameters aren't relevant.


=20
  =20
------=_Part_1987115_1688778356.1631045089071
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp429fdcc2yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false"><div><div><br></div><div><div dir="ltr" data-setdir="false">Thanks for your suggestion, Marcus.&nbsp;</div><div dir="ltr" data-setdir="false"><br></div></div></div><br></div>
        
        </div><div id="ydp1e767b98yahoo_quoted_1610614726" class="ydp1e767b98yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, 7 September 2021, 14:21:19 BST, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="ydp1e767b98yiv1898129563"><div>
    <div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd10863"><div class="ydp1e767b98yiv1898129563moz-cite-prefix">On 2021-09-07 8:12 a.m., zhou wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div></div><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd02582"></div><div><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd85616"><div class="ydp1e767b98yiv1898129563ydp38909655yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div><span style="color:rgb(38, 40, 42);">Hi Marcus,</span><br clear="none">
        </div>
      </div>
      </div><div class="ydp1e767b98yiv1898129563ydp703015c2yahoo_quoted" id="ydp1e767b98yiv1898129563ydp703015c2yahoo_quoted_1673422088"><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd06890">
        </div><div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;"><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd54635">
          </div><div><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd02700">
            </div><div id="ydp1e767b98yiv1898129563ydp703015c2yiv5669889621"><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd26986">
              </div><div class="ydp1e767b98yiv1898129563ydp703015c2yiv5669889621ydp16591bb1yahoo-style-wrap" dir="ltr" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd01164">
                <div dir="ltr"><br clear="none">
                </div>
                <div dir="ltr">Thanks for your
                  comments on my other USRP questions. I have another
                  issue with N321 USRP.</div>
                <div dir="ltr">Following the tuning
                  tips in&nbsp;<a shape="rect" href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks" rel="nofollow" target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a>&nbsp;,
                  I have set wmem_max,&nbsp;<span><span style="color:rgb(38,                       40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">wmem_default, r<span><span style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">mem_max,
                          r</span><span style="color:rgb(38, 40, 42);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">mem_default to 33554432 in host
                          (Ubuntu):</span></span></span></span><br clear="none">
                </div>
                <div dir="ltr">
                  <div>
                    <pre style="font-family:monospace, Courier;color:rgb(0, 0, 0);background-color:rgb(249, 249, 249);border:1px solid rgb(221, 221, 221);padding:1em;white-space:pre-wrap;line-height:1.3em;font-size:14px;">   sudo sysctl -w net.core.wmem_max=33554432
   sudo sysctl -w net.core.rmem_max=33554432
   sudo sysctl -w net.core.wmem_default=33554432
   sudo sysctl -w net.core.rmem_default=33554432</pre>
                  </div>
                </div>
                <div dir="ltr">I have made the
                  configuration permanent by adding these lines in&nbsp;<span><span style="font-size:12pt;font-family:Liberation Serif, serif;"><b>/etc/sysctl.conf, </b>such that
                      they won't get lost after host reboot.&nbsp;</span></span></div>
                <div dir="ltr"><span><span style="font-size:12pt;font-family:Liberation Serif, serif;"><br clear="none">
                    </span></span></div>
                <div dir="ltr"><span><span style="font-size:12pt;font-family:Liberation Serif, serif;">I want to do the same in N321 but
                      couldn't because there is no sysctl.conf in it. I
                      can still configure these parameters from
                      terminal, but it won't survive a reboot.</span></span></div>
                <div dir="ltr"><span><span style="font-size:12pt;font-family:Liberation Serif, serif;">The Linux in N321 is tiny. How can
                      I make the configuration permanently in it?</span></span></div>
                <div><br clear="none">
                </div>
                <div dir="ltr">Any comment from the
                  community will be appreciated.</div>
                <div dir="ltr"><br clear="none">
                </div>
                <div dir="ltr">Thanks,</div>
                <div dir="ltr">Hongwei</div></div>
              </div>
              <div class="ydp1e767b98yiv1898129563ydp703015c2yiv5669889621yqt4485559050" id="ydp1e767b98yiv1898129563ydp703015c2yiv5669889621yqtfd46881"><br clear="none">
                <br clear="none">
              </div>
            </div>
          </div>
        </div>
      </div>
    
    I don't have an N321 myself, but you will probably find that there's
    an /etc/sysctl.conf.d directory, and you can create a sysctl.conf
    file there.<br clear="none">
    <br clear="none">
    But unless you're using the N321 like it's an ordinary host, talking
    to an *external* USRP, you shouldn't need to adjust these
    parameters.<br clear="none">
    <br clear="none">
    When you're streaming samples into/out-of the N321, they don't go
    through the CPU portion of the Zynq at all, so these parameters
    aren't relevant.<div class="ydp1e767b98yiv1898129563yqt5115628375" id="ydp1e767b98yiv1898129563yqtfd51427" dir="ltr" data-setdir="false"><br clear="none"><div><div><br style="color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"></div></div><br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1987115_1688778356.1631045089071--

--===============3290616596363408258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3290616596363408258==--
