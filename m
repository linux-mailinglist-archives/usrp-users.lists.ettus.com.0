Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A46407337
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 00:05:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF433384A42
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 18:05:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="hUrMZ+1c";
	dkim-atps=neutral
Received: from sonic302-3.consmr.mail.bf2.yahoo.com (sonic302-3.consmr.mail.bf2.yahoo.com [74.6.135.42])
	by mm2.emwd.com (Postfix) with ESMTPS id B19D338469D
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 18:05:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631311506; bh=nAUrvOsFtSFpbOv7uF1cEzLu9fM9flGcALMNfe3A1mg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=hUrMZ+1cYwo5mnlsiiuE4B484jQW9mLsEGGSpeNcSpug0YY9ae4gegE9dzcmZ789/PZEPbNlugacvb+M7hxL3X5K2cPQIH/m0GQBWK8Nc2A2wminT47zjA8OZ5UKSo2ddTFLYQZvRi2vr7oHWcytHQFfkm3ISEiM+w0WNfWg7dJNxnhYhrVlycQe+g00xlBXValsfWN5/pD4sTPAc13d7aRPDKa7R7xWjA/Cu+YbjY6Td8aEvlkLgFrhjy8I5yUDtLL6x+NM5p3LmiKaB4qKo5Z0rCHG6AkJYQvRahISDmTtWV6VnNOTufPtstILvp/a6Ae02ujwyN3fQOjRXqYGxQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631311506; bh=7OTlsbHnpPrVsqIXobdSID/5WYOOMMbAkfc+kIWzAMC=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Zb0Op/hEAnPJFaLfFsLlDhW1G4E8lBSW3HrN8bhFdqCM4hFNAETEloXrQ68X5zYM70AjhDnWIPS0/zbyhj/CunQIKG6V96JIJwybAkK3HV7IrtAYW6UPHCPUUqIksjANdSRE+c/+wGjxsm65UMXpcOQaIY0duJSJss10GLL5k02kMQ0OPJCjcJjsm4SEkQVc8vEJwCFrz7v/2B9pwHXo2NJgbbI9Azxf8hB+puM3AawplN7zlMx6gKtcyDGHv3V67uKnXTUIaN6YsV7Qq5z1d9gCkMJIG5/433aYJyJfSNvAaVeMMJsJvFhqqX/42B85HGZoGo7+GXjiuxl1tw9zZA==
X-YMail-OSG: Giz7HrYVM1kBJXAe31_iDGxIVGgjKMoz5IH8D1kv.5Xpu2EvlX7IrMkbPP.v6bO
 RM4wGS7ee.KWBrDZo5XjSo2jMSifVwIcdg4LAX1dDO9T4d9MXI72EUxcXKxrgtHZG27o5jyi6qo5
 b606meyQ9Gw3Hg23rsX5w_cp3lb_MykfH6QIM0q_S17HVuy7h1bPjO5b655oJYjwIr4WxCnm9zZe
 FSs9RH3g_0CgqWGeSOYXjaCrhPcuDPnA5Kve.sD_IbXwP51Ut1oKgeuPHDfe4QogZiP.f3365dva
 hCOcXmQHQ_A3ET6O0RuXNSQfOuVHok8VO.tUM0VEknuUNyH1If5An9f5ogjDam0wGUSt5DrccPnq
 ajtJnQR1rE._yRkjRbfXb5h8aQ4gz_UbZYvRUnwl6WVsbDROybPuxSGOq0BPSbz5RF8d3I9KtoKJ
 cetRDwd3y2yKB_d9sK6cw5sdd40LlPQ8K83ZaeN.x3i273gLxxWmxPq1z84nc3jaELCDrZhtyJfn
 nZGHXEEwCIqkjd07Cdlamn5uz31zXYDbbyjEwW66o8cLQb.7HbsgXLCCospY6KHrDGDUMWs8n2Ef
 0lnBR5lBwKNvGXPQtfZ.VcGJ24YWqViEOVQDusz1RdeJkCKkm3vzrYCrecu.GUIUshNUQEGj0hrN
 l4Hes8qaGXnxsPRrA0ajZ_xs_Z1EGjqYw8uie._45JZFtc75AJuCmY2tFLJnS2r9XdCdGsX5AxEh
 xiSZPAayz74hUFFy7oC9YtK.ZIg8DvD8OUEgYezHRtmVBk4zt0MdewZvzYKaB5vSoiO2GdSI_dj1
 _aFuwrQcB__KfAnXHip6Zjeu77DdosogJvnVXuXfJvJ.oT.wgq9bSdyu5IlOHMaRAY2xtEo0h4lq
 b6cw5FnZJVlBXnB_3EOowpOAJrM5LoU0Rb2KuR6sIJG5qCxhGFcXlGdbZm2yXSPVq5bfZchxdjY0
 3jIQvdEM9IR.d8IirzZmZ.dx4pc5ewzeMiRDY_nh2Qf3GH5cFEOvwsMnhwoc8nFF5Y0R8Y0IPloz
 Wqt9XL2kF8RPAWUASLeDgn7EUGI5hTCuzab_Y7kTcAD8JPz0IGWw0qAktdKgX1uYkMMU0Iq4mSC_
 U2oYX33NHLX8GF3dCIrVS_xQsy5Z8JQBY49VXrrO.LJTB9oalJA.QaRJ4APmjbl7ZtoG95XR_oCf
 2qnfDmaMAhs.cyiId2bdgABbYPXgjqsHuJOhJUnKw.ntIZYK1uX08MMb6Zsuy8GRTSe.Wr8AHlpX
 ARMHP03nBo60fnDk5cSHKWhmQDF3I7AB59YeR9Eg.yeQE.yFj0Q5TioopVwjddDxLnUDciOuErYd
 szr10slZnRG3jh8417u6F.iJAm1PISA9yDD7O29WiU5jH0FI.EMzK1cn6tdnwlPUToHUwwNGnY25
 QX_U2jtk_PdgqtjoNn0P_6hIvV0EHfkCGT8WRQB6kNQwCt3WeNIkpXZNi9LWIo1CHaEBvndcnK4h
 35DjNuo6EAtHJBvRfeR00W9OONxZzXPs5gOQItw1zrXYAyecQZZ12TGfhWwxls.O5oWc7ofsF0mw
 nNgxNHj14ItxQLnpResVvS2dHfn9cHnFKf4Lxz4nHtfSO.dtSBHz1S..VgpW6Ng1C16.5_C.wZZm
 x2uE5dpAzipxbkQvunl_31sHCJbSzD2fbDczEqO65cw.Sf47W0e6VKxaXl2Aot3VkSwQSLz2j9r3
 uD3Z78tipAe5vKHTF_meFC2wDGtFOgUGr0pkA1tEAyrMBJThQfQH76WOQ7JjXdGgmTLay8oZldu1
 btH5OUvZ.2EqKYu6YBcDTacyLyE7WgAdJhilO7S5Ghnqb_mmxpxovCiCdZNZ7ARJrgS1HbxVVk7.
 t5cfkBq8ja_4mA1LdAr7D_nxqcCZELk0DW1YpS4usT26MKuVZKVLIAT5RfscgpIgsl3JVXyhDrGd
 ulAwYsABnXQMP0mfEOjAus9WF.JttmU7wuwFyKCC3pqUSjSzxLTSrzYobcRtDXnez6yybI_4yzWo
 rLzSPVgATazWZplaR_Bw77Pkw7DzY7sG0ojyMzD_iJt2oxoOpzf84oIKODNGgs8cyl.P04mICOo8
 DLSQ7nraAl9uTD87jGEx9HjrU9g0npovYJt8s_1S5TS1WX5hoARQva1Ak6.p_R0K9qZtEljsG267
 QGxhsw12MBr37l9yNY9oSRleCou2dQhQ5iqTTqT69sE4zKoQrFrEn5EUjXvuNtyCaPZAAzyXRnGh
 i8F_J8Au0XFThG2J40YjQwH8PQiOceNv7tyVwdXp7o_rUkuC1NRgVuhXV023q
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.bf2.yahoo.com with HTTP; Fri, 10 Sep 2021 22:05:06 +0000
Date: Fri, 10 Sep 2021 22:05:03 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <899213065.2697497.1631311503116@mail.yahoo.com>
In-Reply-To: <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com> <804336125.2658048.1631299169124@mail.yahoo.com> <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: AOODODFQ4ITYDVIXLDVPOM6CG4NPLDMU
X-Message-ID-Hash: AOODODFQ4ITYDVIXLDVPOM6CG4NPLDMU
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AOODODFQ4ITYDVIXLDVPOM6CG4NPLDMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2948636289126422526=="

--===============2948636289126422526==
Content-Type: multipart/alternative;
	boundary="----=_Part_2697496_1499453332.1631311503113"

------=_Part_2697496_1499453332.1631311503113
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus, thanks for your reply.No, I am not on MacOS. I am using Ubuntu.=
 How can I configure send buff size in Linux?I went through the uhd library=
 but could not see it had any limit on buffer size. So, very strange where =
the buffer limit comes from.
How do I measure the buffer?I created a packet of=C2=A0245760 bytes, and I =
set=C2=A0metadata.has_time_spec=C2=A0 =3D true, and configure=C2=A0metadata=
.time_spec to a future time, then I sent the packets. Before metadata.time_=
spec, the sent packets would be stored in the buffer. When send() was block=
ed, it meant the buffer was full. I counted; after 4 packets, send got bloc=
ked. Only after time passed=C2=A0metadata.time_spec, the packets in buffer =
were consumed, I could send another packet.=C2=A0
    On Friday, 10 September 2021, 19:53:29 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
=20
  On 2021-09-10 2:39 p.m., zhou wrote:
 =20
=20
 Hi,=20
  I am trying to increase the buffer size in tx.=20
  According to=C2=A0https://files.ettus.com/manual/page_transport.html,=C2=
=A0=20
  =C2=A0it seems that we can change the default=C2=A0send_buff_size by spec=
ifying value in device arguments. I tried the following configuration:  uhd=
::usrp::multi_usrp::make('addr=3D192.168.12.2, second_addr=3D192.168.13.2, =
mgmt_addr=3D192.168.10.16, master_clock_rate=3D245.76e6, type=3Dn3xx,=C2=A0=
send_buff_size=3D33554432')
 =20
  But this didn't have any impact. I measured that the actual buffer is alw=
ays about ~1MB.  How did you measure the buffer?
=20
=20
=20
 =20
  Then in UHD library, I find the following limit:
      static const size_t MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib=20
   =C2=A0 =C2=A0 if (link_params.send_buff_size > MAX_BUFF_SIZE_ETH_MACOS) =
{ =C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send_buff_size =3D MAX_BUFF_SIZE_=
ETH_MACOS; =C2=A0 =C2=A0 }=20
    =20
 Are you on MacOS?=C2=A0=C2=A0 If not, that code isn't relevant.=C2=A0 That=
 code doesn't even get compiled unless you're
 =C2=A0 on MacOS.
=20
=20
   33554432 > 1048576 (1Mib), so this may be why the above config didn't wo=
rk. Then I tried the following configuration:
    uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,second_addr=3D192.168.=
13.2,mgmt_addr=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,sen=
d_buff_size=3D524288')
 =20
  This one didn't have any impact either. So, am I wrong in configuring=C2=
=A0send_buff_size in this way? what is the correct way?=20
  1M buffer size is too small for my application. I am using sampling rate =
245.76MHz. This buffer can only save data up to 0.5ms. I want to allocate a=
 bigger buffer to achieve better reliability.=20
  Thanks for any comment.=20
 =20
 =20
  =20
   =20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_2697496_1499453332.1631311503113
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpec1c33byahoo-style-wrap" style=3D=
"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus, thanks for your r=
eply.</div><div dir=3D"ltr" data-setdir=3D"false">No, I am not on MacOS. I =
am using Ubuntu. How can I configure send buff size in Linux?</div><div dir=
=3D"ltr" data-setdir=3D"false">I went through the uhd library but could not=
 see it had any limit on buffer size. So, very strange where the buffer lim=
it comes from.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div d=
ir=3D"ltr" data-setdir=3D"false">How do I measure the buffer?</div><div dir=
=3D"ltr" data-setdir=3D"false">I created a packet of&nbsp;<span>245760 byte=
s, and I set&nbsp;<span>metadata.has_time_spec&nbsp; =3D true, and configur=
e&nbsp;<span>metadata.time_spec to a future time, then I sent the packets. =
Before <span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neu=
e, Helvetica, Arial, sans-serif;">metadata.time_spec, the sent packets woul=
d be stored in the buffer. When send() was blocked, it meant the buffer was=
 full. I counted; a</span></span>fter 4 packets, send got blocked. Only aft=
er time passed&nbsp;<span><span style=3D"color: rgb(0, 0, 0); font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;">metadata.time_spec, the pack=
ets in buffer were consumed, I could send another packet.</span></span></sp=
an></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span><=
span><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue,=
 Helvetica, Arial, sans-serif;">&nbsp;</span></span></span></span></span></=
div><div><br></div>
       =20
        </div><div id=3D"ydp18a06c0yahoo_quoted_1837252270" class=3D"ydp18a=
06c0yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, 10 September 2021, 19:53:29 BST, Marcus D. L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp18a06c0yiv5378333377"><div>
    <div class=3D"ydp18a06c0yiv5378333377moz-cite-prefix">On 2021-09-10 2:3=
9 p.m., zhou wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div class=3D"ydp18a06c0yiv5378333377ydpa2579=
362yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;">
        <div dir=3D"ltr"><span>Hi,</span></div>
        <div dir=3D"ltr"><span><br clear=3D"none">
          </span></div>
        <div dir=3D"ltr"><span>I am trying to increase
            the buffer size in tx.</span></div>
        <div dir=3D"ltr"><span><br clear=3D"none">
          </span></div>
        <div dir=3D"ltr"><span>According to&nbsp;</span><a shape=3D"rect" c=
lass=3D"ydp18a06c0yiv5378333377" href=3D"https://files.ettus.com/manual/pag=
e_transport.html" rel=3D"nofollow" target=3D"_blank">https://files.ettus.co=
m/manual/page_transport.html</a>,&nbsp;</div>
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr">&nbsp;it seems that we can change
          the default&nbsp;<span><span style=3D"color:rgb(0, 0, 0);font-fam=
ily:Helvetica Neue, Helvetica, Arial, sans-serif;"><b>send_buff_size </b>by=
 specifying value in
              device arguments. I tried the following configuration:</span>=
</span></div>
        <div dir=3D"ltr"> <span>uhd::usrp::multi_usrp::make(</span>'addr=3D=
192.168.12.2,
          second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16,
          master_clock_rate=3D245.76e6, type=3Dn3xx,&nbsp;<b>send_buff_size=
</b>=3D33554432')<br clear=3D"none">
        </div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr"><span><span><span style=3D"color:rgb(0, 0, 0);font=
-family:Helvetica Neue, Helvetica, Arial, sans-serif;">But this didn't have=
 any
                impact. I measured that the actual buffer is always
                about ~1MB.</span></span></span></div>
      </div>
   =20
    How did you measure the buffer?<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div class=3D"ydp18a06c0yiv5378333377ydpa2579362yahoo-style-wrap" sty=
le=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13=
px;">
        <div dir=3D"ltr"><span><span><span style=3D"color:rgb(0, 0, 0);font=
-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br clear=3D"none">
              </span></span></span></div>
        <div dir=3D"ltr">Then in UHD library, I find
          the following limit:<br clear=3D"none">
        </div>
        <div dir=3D"ltr"><span>
            </span><div>
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr" style=3D"color:rgb(0, 0, 0);font-family:=
Helvetica Neue, Helvetica, Arial, sans-serif;">static const size_t
                    MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib</div>
                  <div><br clear=3D"none">
                  </div>
                </div>
                &nbsp; &nbsp; if (link_params.send_buff_size &gt;
                MAX_BUFF_SIZE_ETH_MACOS) {</div>
              <div>&nbsp; &nbsp; &nbsp; &nbsp; link_params.send_buff_size =
=3D
                MAX_BUFF_SIZE_ETH_MACOS;</div>
              <div>&nbsp; &nbsp; }</div>
              <div dir=3D"ltr"><br clear=3D"none">
              </div>
            </div>
          </div>
      </div>
    </blockquote>
    Are you on MacOS?&nbsp;&nbsp; If not, that code isn't relevant.&nbsp; T=
hat code
    doesn't even get compiled unless you're<br clear=3D"none">
    &nbsp; on MacOS.<div class=3D"ydp18a06c0yiv5378333377yqt4910377105" id=
=3D"ydp18a06c0yiv5378333377yqtfd24992"><br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div class=3D"ydp18a06c0yiv5378333377ydpa2579362yahoo-style-wrap" sty=
le=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13=
px;">
        <div dir=3D"ltr"><span>
            </span><div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0)=
;font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">33554432 &gt; <=
span>1048576 (</span>1Mib),
                  so this may be why the above config didn't work. Then
                  I tried the following configuration:</span></span><br cle=
ar=3D"none">
            </div>
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">uhd::usrp::m=
ulti_usrp::make('addr=3D192.168.12.2,second_addr=3D192.168.13.2,mgmt_addr=
=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,<b>send_buff_size=
</b>=3D524288')<br clear=3D"none">
                </div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br clear=3D=
"none">
                </div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">This one did=
n't have any impact either.</div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;">So, am I wro=
ng in configuring&nbsp;<span><span style=3D"color:rgb(0, 0, 0);font-family:=
Helvetica Neue, Helvetica, Arial, sans-serif;"><b>send_buff_size
                      </b>in this way? what is the correct way?</span></spa=
n></div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span =
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><br clear=3D"none">
                    </span></span></div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span =
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">1M buffer size is too small for my
                      application. I am using sampling rate 245.76MHz.
                      This buffer can only save data up to 0.5ms. I want
                      to allocate a bigger buffer to achieve better
                      reliability.</span></span></div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span =
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><br clear=3D"none">
                    </span></span></div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span =
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;">Thanks for any comment.</span></span></div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span =
style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue, Helvetica, Arial, s=
ans-serif;"><br clear=3D"none">
                    </span></span></div>
                <div dir=3D"ltr" style=3D"color:rgb(0,                   0,=
 0);font-family:Helvetica Neue, Helvetica, Arial, sans-serif;"><br clear=3D=
"none">
                </div>
                <div><br clear=3D"none">
                </div>
              </div>
              <br clear=3D"none">
            </div>
          </div>
      </div>
    </blockquote>
    <br clear=3D"none">
  </div></div></div>_______________________________________________<br clea=
r=3D"none">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp=
-users@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists=
.ettus.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=
=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow"=
 target=3D"_blank">usrp-users-leave@lists.ettus.com</a><div class=3D"ydp18a=
06c0yqt4910377105" id=3D"ydp18a06c0yqtfd94940"><br clear=3D"none"></div></d=
iv>
            </div>
        </div></body></html>
------=_Part_2697496_1499453332.1631311503113--

--===============2948636289126422526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2948636289126422526==--
