Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8F242AC09
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 20:46:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7589384FE5
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 14:46:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="fnC2Bj/u";
	dkim-atps=neutral
Received: from sonic305-2.consmr.mail.bf2.yahoo.com (sonic305-2.consmr.mail.bf2.yahoo.com [74.6.133.41])
	by mm2.emwd.com (Postfix) with ESMTPS id EB04438426C
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 14:45:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634064315; bh=51WX/jQHM58dfuU6PR33908q6XeNfu05allQo/mFhLM=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=fnC2Bj/uGm8s8Omsn79hqAc37Vm2uzR5AaH5egzwegmahWgs4RgpeA3WsFv0qI1dGytjWowJGXbwxIma1fg2YQS8+AgEnW85L56wj3dTD6Pc3KHS7Pql3WB1S31v4GdRzYW6Sr9tMqeVaWXLfyUIj6xCitJns5lQNKwRb5Pl0/UT9XqDcf/vxJcT1/3N87NESLlzTaV/XQb6IpEazHQL+HIclJEyAiwfjald3e9vNcy2IjRVqcsFImDaHlWx9Jm6yYwzc2uMAkMD7aft11jBy5EzdvqG/fYvV4g0vqL3yamnXLdyhTxTypckRkim1SPPf8S65aQcRHqiR+ke92cMjA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1634064315; bh=zPlKXwdFu+kZlB/RGlVjt+7CoplI/cklGYlOGf/Am+6=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=YtslvgW/LqTyYBXNkl4OVl5ecC6rGqtlL1o0xs2eMgNF2/djtVNA/BTK/aRwro4Y2MvwxbtQHKCkEnH8jel/PfZCx3nrUJdd4YTm8m6c3IsNfTz1amMQnbPXBkgHjsPDPNdq9tHBUDUviQswfjAEMRZFwbIuGMlABcHL46cJJt0SuezyZyUzKpLsj80Xo7H51CWkV1Y2RZL48b5bVqvEmLhVqzJZWztEK4/SqnJkn5WwA/ijuup7K3sbULAmFpu+9JLeMA1ef7qIdYtr2fw+4GeT9yRBnJ7niR8AGrgxvXuzN0hHStCODaBjim7XSGoDhxlC6h9lJpKv9clbh1fpdg==
X-YMail-OSG: 4GvzuEUVM1md6uQVLAPwqwMd_b.ArP.H6x8eB1W670_DxdzPSiYkmxsu63ehKsa
 4j88f_mpL4ZF_ox4c_Q0EPKEk2olE01Jo6NjJwOnZ3ckg0ZRQEZZ0xbZNr4wSJdid5Y5ctq0Yjgo
 vmTGweTpaby4VjHGePdwECrRAywdvVYiSVMHmGcZ3j_slWwqBN6.npfnT6H8zdOFGrM5.GbRY0RZ
 EVUEp85EFkHn44URn.l39bpRK5q3GlS6s6Pkpf52HHnpCG7qZKOTLyxiJ46DODYmmuuDNbO7HkUP
 zAOeUKJbtdz84EdzkxmY3Ndai.4jqN0Xg86gwVi1J8GrFqYNATUoQ_bbVYBkzNwRo0fpUkHkENJm
 iKMh5ZfZQHZqAMLX_tsqY7XV2YnBwYsVYvcVt0E_VhfJGSHCFQ95XseTEwEX7.c9GnIfe9Kb0kfF
 IW.C.5g11kn.Lvc91vdWz0AKSzGDPZIVcimCI0c1w5D2RLV6dtn1AuBFyBuFOuOWg90HxDVhJxE0
 FnBwRrsk08V4HyFjn9Z4eZy2FXBjbK46xv1FjSi3C6fsiuJUKkbzX02xwgkkw08lOrJdur41oZIQ
 YD1ea6OM2X0ek8g_XUp7PY0WYNrJN69lOSR_LFj_qCIEOwi3diJ5Tu07USL79YQoBSeH5JWQVpaO
 xXe9IMZ_.Vt1w8.Nfm7On.EOOR_veAVngBB6Hav9IhqNNJ.kczfYgNGpkWFUi28MnaNG0WCY12m1
 H.4kW77RU6IFQ9Smt7RAi5l40LLt6GpLS7trRFb7zUfFEyeBAeA_5IHRwlkcJNHRN5lAP3GDuPhS
 iE3BZhoQUAn96MjeBNitxFu2Am1J_qaOOQOQ4O47R0VVZCdpC_KE64z4xmAe4XMXmqUUhqBp.MLS
 ZGTqNxNaIeULMOMvSaei1F2zPLhw0TeRiDuj9joyxW.gmvA51RhoI6fx462U8MT6TKh3WpiXyQBY
 IZ7LOwA.YcFYE1kLQ60y6PA9vX2PkSHgz2jtXDTn9VLbFVGpajqIqICRgrhb4m38IypS7dlzcKmA
 V6MKAY22Uba1zkmu9XW_pc3VKs4Psh7FeHlRqpf3DXbEKVgsxjRHCnshHCGRsoaMSzc_iMIcAWTf
 _vX.GFgyM.ytTG1KHaFhAUtKwAG3ATLVV.8cagOz_kviE9ND5Vp5Bl7Fo9RJ3_8eCRuFLPmNjyLc
 82VFXktS5sK59PF_OR6H5.X3tjRY4cYFaJ0i76I_osWWqj16Wg7hdAM_BBYmA60YoV0YOhVkH5_m
 bVLV3S_U44znL3PzFVR6JkcRZOYPuzrfgjoXR9jHj7VmIrWPH5UUIPrzFHBwZfYaGHeyhLjk1QiT
 jEWyV292LRp66Set2rLFpVi_VUFKqdx7irtEsCsIi6YabNzA_p_K_Eg73H3zbUsAkK05.F1P4S7O
 1goTVxq_BRjtvOc_X64.mVyiyTLlXrzxJLQFfPd75H_a96U45IuNqxv97joU_dQW.Bc4J..2gTEd
 tFTIXei1eY5ILaZU0tbqHOAsjDaIlGhzd2sDaNFuEjAfPIavwGhRaYSTVca6owZCIcIX4b6RfLGj
 xW1AMd70Fx_QYLU1WpWMD9kQTjSvDt9R1W7SBg637FX9moFm6he7ke2kDXFbC9cBBHYsjHC2tmdj
 rAd6tmATuATLjttDiIe1VMZ8MKaN9tOks8TTUl6PHgef0ZnSiflm1yidsMS_tck5XimaLaYtnL4W
 l2LUqYashJBGeGvj5sMz2dzJwwLaZiryduymEcf0xbqfNMx.ymVBaJdOWu64yyl5Gl8ND_u1mDrc
 2m2gIU19.ambhxZ7BEi1qjJq_Vau7cIBx.wxeJC6gZEKCqpAiJhain5D_LgAGlSdjJK0dsb6L9J1
 o.uQOsLmngIm4ZSeG4ICyjlK0PAp_wV2EV31LnI0bTR8klcvw9w8ZE9M5fpmvnIs0oAeH_57zoI1
 k3pyTqq6S3XC8EQKIbaxxKM71p_fA5Z21yy.sxMYLW398wsP9wilfCLY4UuWHXRIj5fmI_4fPTLI
 WmL3mX.N123Ah74A.h1F6TuUS9SOQH8Oa_wdK6mcYxuXV_.Vt8WyFx.t06hD0G_tE3IPM4kSxOd2
 pR4iqtXdgTlqoqcAEbseWsHBaSafEVJdwZthflsvzv9s2vYnyTyYMbRybr_6NtZkKsbL5dMXqeJW
 .qNl5H.2fFnuyFhRS4PkpWDmzVtU2nK9JfBGh4MSoWCgRcLQg6sH_O6UrSqNnWHHV83Pm5617jbL
 3ehoy6PfhFO.QfTrCCstqwyaQ5q2qhJgOps8dFtQ-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.bf2.yahoo.com with HTTP; Tue, 12 Oct 2021 18:45:15 +0000
Date: Tue, 12 Oct 2021 18:45:14 +0000 (UTC)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <672425144.1077012.1634064314721@mail.yahoo.com>
In-Reply-To: <afc23cc1-6024-9591-afaf-745b50327ce2@gmail.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com> <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com> <279084312.1067344.1634061310152@mail.yahoo.com> <2012533350.1050943.1634062837483@mail.yahoo.com> <afc23cc1-6024-9591-afaf-745b50327ce2@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19116 YMailNorrin
Message-ID-Hash: 2RBE3PWGTR44DVVVAAGWKWB2PBQON67N
X-Message-ID-Hash: 2RBE3PWGTR44DVVVAAGWKWB2PBQON67N
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RBE3PWGTR44DVVVAAGWKWB2PBQON67N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3761018917500987857=="

--===============3761018917500987857==
Content-Type: multipart/alternative;
	boundary="----=_Part_1077011_1000803065.1634064314720"

------=_Part_1077011_1000803065.1634064314720
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 5918 root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 2208 S=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 grep usrp

    On Tuesday, October 12, 2021, 02:38:36 PM EDT, Marcus D. Leech <patchvo=
nbraun@gmail.com> wrote: =20
=20
  On 2021-10-12 2:20 p.m., Tellrell White wrote:
 =20
=20
 Out of curiosity, when running "systemctl status usrp-hwd" I get a message=
 stating "vendor preset=3Denabled". Is there anyway possible that mpm is st=
ill being started at bootup?=20
 =20
      On
    What does
=20
 ps |grep usrp
=20
 Yield?
=20
=20
  =20
------=_Part_1077011_1000803065.1634064314720
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp9e6c6f52yahoo-style-wrap" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;"><div></div>
        <div dir="ltr" data-setdir="false">5918 root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2208 S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; grep usrp<br></div><div><br></div>
        
        </div><div id="yahoo_quoted_5024334566" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, October 12, 2021, 02:38:36 PM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv6628324684"><div>
    <div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd12258"><div class="yiv6628324684moz-cite-prefix">On 2021-10-12 2:20 p.m., Tellrell White
      wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div></div><div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd62973"></div><div><div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd45707"><div class="yiv6628324684ydpee2354d5yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">Out of curiosity, when
          running "systemctl status usrp-hwd" I get a message stating
          "vendor preset=enabled". Is there anyway possible that mpm is
          still being started at bootup? <br clear="none">
        </div>
        <div><br clear="none">
        </div>
      </div>
      </div><div class="yiv6628324684yahoo_quoted" id="yiv6628324684yahoo_quoted_4922596405"><div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd28951">
        </div><div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;"><div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd83448">
          </div><div><div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd89395"> On</div><br clear="none">
          </div>
        </div>
      </div>
    
    What does<br clear="none">
    <br clear="none">
    ps |grep usrp<br clear="none">
    <br clear="none">
    Yield?<div class="yiv6628324684yqt9819641612" id="yiv6628324684yqtfd98015"><br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_1077011_1000803065.1634064314720--

--===============3761018917500987857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3761018917500987857==--
